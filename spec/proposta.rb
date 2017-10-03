require 'spec_helper'

describe '#response' do
  context 'Quando chamar o metodo composicao' do
    it 'retorna sempre uma resposta da api' do

      carro =  Ferrari.composicao
      expect(carro).not_to be_nil
    end
  end
end

describe '#response' do
  context 'Quando chamar o metodo composicao' do
    it 'retorna sempre uma resposta da api' do

      request_body = FactoryGirl.build(:interessado)
      #hash = JSON.parse(request_body)
    end
  end
end
