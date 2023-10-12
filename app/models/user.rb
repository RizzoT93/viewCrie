class User < ApplicationRecord
  # Validation for email
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/, message: "Email Invalido!" }

  # Validation for CPF
  validates :cpf, presence: true, format: { with: /\A\d{3}\.\d{3}\.\d{3}-\d{2}\z/, message: "CPF Invalido! Use ponto (.) e hifen (-)" }

  # Validation for phone number
  validates :phone, format: { with: /\A\+\d{2}\s\d{2}\s\d{4}-\d{4}\z/, message: "Telefone invalido! Siga o modelo +55 11 5555-5555" }
end
