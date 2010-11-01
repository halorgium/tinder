module Tinder
  class User
    def self.parse(data)
      data[:created_at] = Time.parse(data[:created_at])
      new(*data.values_at(:id, :name, :admin, :type, :email_address, :created_at))
    end

    def initialize(id, name, admin, type, email, created_at)
      @id         = id
      @name       = name
      @admin      = admin
      @type       = type
      @email      = email
      @created_at = created_at
    end
    attr_reader :id, :name

    def ==(other)
      if other.is_a?(User)
        id == other.id
      else
        false
      end
    end
  end
end
