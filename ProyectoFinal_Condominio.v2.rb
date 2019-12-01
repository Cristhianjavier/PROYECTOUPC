require "test/unit"

class Persona
	attr_accessor :dni, :tipoPersona, :nombre, :apellido, :telefono #, :arregloPersonasPermitidas
	def initialize (dni, tipoPersona, nombre, apellido, telefono)
		@dni = dni
		@tipoPersona = tipoPersona
		@nombre = nombre
		@apellido = apellido
		@telefono = telefono
		#@arregloPersonasPermitidas = []
	end

	#def registrarPersonasPermitidas

	#end

end

class Habitacion
	attr_accessor :codHabitacion, :nroHabitacion, :descripcionHabitacion, :precioHabitacion, :estadoHabitacion, :arregloServicio
	def initialize (codHabitacion, nroHabitacion, descripcionHabitacion, precioHabitacion, estadoHabitacion)
		@codHabitacion = codHabitacion
		@nroHabitacion = nroHabitacion
		@descripcionHabitacion = descripcionHabitacion
		@precioHabitacion = precioHabitacion
		@estadoHabitacion = estadoHabitacion 
		@arregloServicio = []
	end

	def registarServicio
	
	end
end

class Servicio
	attr_accessor :codServicio,:tipoServicio, :periodo, :monto, :pago
	def initialize (codServicio, tipoServicio, periodo, monto, pago)
		@codServicio = codServicio
		@tipoServicio = tipoServicio
		@periodo = periodo
		@monto = monto
		@pago = pago
	end

end

class Visita
	attr_accessor :codVisita, :estadoVisita
	def initialize (codVisita, estadoVisita) 
		@codVisita = codVisita
		@estadoVisita = estadoVisita
	end
end

class Administrador
	attr_accessor :arregloPersonas
	def initialize
		@arregloPersonas = []
	end


	def registrarHabitacion
	end

	def registrar(persona)
			arregloPersonas.push(persona)
	end

	def obtenerPropietario(tipoPersona)
		temporal = []
		for p in arregloPersonas
			if p.tipoPersona==tipoPersona
				temporal.push(p)
			end
		end
		return temporal

	end











	def registrarVisita 
	end

	def registarPagos 
	end

	def consultarVisita (fecha)
	end

	def consultarVisita (dni)
	end

	def consultarVisita(nroHabitacion)
	end

	def consultarPagoServicio(dni)
	end

	def consultarPagoServicio(habitacion) 
	end

	def consultarDeudorServicio()
	end
end


class TestCondominio < Test::Unit::TestCase
	def testPersonasPorTipo
		persona1 = Persona.new("123456789", "Propietario", "Carlos", "Rojas", "1234567")
		persona2 = Persona.new("123456781", "Propietario", "Carla", "Roman", "1234561")
		persona3 = Persona.new("123456782", "Familiar", "Pedro", "Rojas", "1234562")
		persona4 = Persona.new("123456783", "Visitante", "Ivan", "Rios", "1234563")
		administrador = Administrador.new
		administrador.registrar(persona1)
		administrador.registrar(persona2)
		administrador.registrar(persona3)
		administrador.registrar(persona4)
		propietario = administrador.obtenerPropietario("Propietario")
		assert_equal 2, propietario.size
		propietario = administrador.obtenerPropietario("Familiar")
		assert_equal 1, propietario.size
	end
end

		

