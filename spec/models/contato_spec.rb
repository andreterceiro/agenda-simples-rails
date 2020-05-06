require 'rails_helper'

RSpec.describe 'contato' do
  it "idade deve ser maior que zero" do
    contato = Contato.new

    contato.idade = -1
    contato.nome = "André"
    contato.email = "a@a.com"
    contato.save

    expect(Contato.count).to eq(0)
  end
end
