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
      @patrons.select do |patron|
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
end
