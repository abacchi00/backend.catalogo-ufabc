require 'roo'

class SubjectsGenerator
  def initialize(path)
    @path = path
  end

  def generate
    xlsx = Roo::Spreadsheet.open(@path)
    sheet = xlsx.sheet(0)

    @subjects = []

    sheet.each(code: 'SIGLA',
               name: 'DISCIPLINA',
               tpi: 'TPI',
               recommendation: 'RECOMENDAÇÃO',
               goals: 'OBJETIVOS',
               content: 'EMENTA',
               basic_bibliography: 'BIBLIOGRAFIA BÁSICA',
               complementary_bibliography: 'BIBLIOGRAFIA COMPLEMENTAR') do |hash|

      @subjects << hash
    end

    @subjects.delete_at(0)

    @subjects.each do |subject_data|
      subj = Subject.new(subject_data)
      subj.save
    end
  end
end

# SubjectsGenerator.new('app/assets/catalogo_disciplinas_graduacao_2018_2019.xlsx').generate
