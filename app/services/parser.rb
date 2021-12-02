class Parser

  def initialize (col_select)
    @col_select = col_select
  end

  def call
    select_column
    parser
  end

  private

    def select_column
      p "Voici la liste des colones du document choisit"
       refacto_col_name
      p "choose les colones que tu veux selectionner"
      @col_choice = gets.chomp.split(" ")
    end

    def refacto_col_name
      p @col_select[0].to_h.keys.sort
    end

    def parser
      @col_select.map(&:to_h).map do |hash|
        hash.fetch_values(*@col_choice)
      end
    end
end