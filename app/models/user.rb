class User < ApplicationRecord
  validates :username, presence: {
    mesagge: "Vôtre nom est obligatoire"
  }

  validates :email, presence: {
    mesagge: "Vôtre email est obligatoire"
  }

  validates :username, uniqueness: {
    mesagge: "ce nom est déjà pris )="
  }
end
