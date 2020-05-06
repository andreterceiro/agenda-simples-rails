class Contato < ActiveRecord::Base
   validate :validador_idade
   validates :nome, {
    :length => {
	   :maximum => 100, 
	   :minimum => 1,
	   :too_long => ": até %{count} caracteres são permitidos",
	   :too_short => ": o nome deve ser informado"
	 }
    }
   validates :email, {
    :length => {
	   :maximum => 100, 
	   :minimum => 1,
	   :too_long => ": até %{count} caracteres são permitidos",
	   :too_short => ": o e-mail deve ser informado"
	 }
    }
   
    def validador_idade
      if idade.nil? or (idade < 1 or idade > 150)
        errors.add :idade, ": a idade deve ser entre 1 e 150"
      end
    end
end
