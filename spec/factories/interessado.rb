FactoryGirl.define do
  factory :interessado do
    nome 'Joao Silva'
    idade '1990-01-01'
    cpf '1990-01-01'
    #endereco :address, factory: :address, strategy: :build
  end
end
