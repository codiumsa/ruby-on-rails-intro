require 'rspec'
require 'rspec/its'
require_relative '../practica_clases.rb'

describe "Clases" do

  context "check results" do
    p1 = Persona.new("Juan", "Perez")
    p2 = Persona.new("Juan", "Benitez")
    p3 = Persona.new("Juana", "Perez")
    p4 = Persona.new("Romina", "Benitez")

    it "resultado de busqueda inesperado" do
      expect(Persona.search("Perez").size).to be == 2
    end
  end

  context "verificando propiedades de instancia" do
    subject(:john) { Persona.new("Cristian", "Rodriguez") }

    it "missing nombre" do
      is_expected.to respond_to(:nombre)
    end

    it "missing apellido" do
      is_expected.to respond_to(:apellido)
    end

  end

  context "verificando propiedades de clase" do
    subject(:class) { Persona }

    it "missing search" do
      is_expected.to respond_to(:search)
    end
  end
end
