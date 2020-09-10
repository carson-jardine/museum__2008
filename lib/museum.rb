class Museum
  attr_reader :name, :exhibits, :patrons
  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    @exhibits.find_all do |exhibit|
      patron.interests.include?(exhibit.name)
    end
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    patrons_by_interests = {}
    @exhibits.flat_map do |exhibit|
      patrons_by_interests[exhibit] = []
      @patrons.find_all do |patron|
        if patron.interests.include?(exhibit.name)
          if patrons_by_interests[exhibit]
            patrons_by_interests[exhibit] << patron
          else
            patrons_by_interests[exhibit] = [patron]
          end
        end
      end
    end
    patrons_by_interests
  end

  def ticket_lottery_contestants(exhibit)
    patrons_by_exhibit_interest.flat_map do |interest, patrons|
      if interest == exhibit
        patrons.find_all do |patron|
          patron.interests.include?(exhibit.name) && patron.spending_money < exhibit.cost
        end
      end
    end.compact
  end
end
