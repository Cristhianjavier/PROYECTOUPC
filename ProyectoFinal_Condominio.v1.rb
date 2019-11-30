require "test/unit"

class Persona
	attr_accessor :dni, :tipoPersona, :nombre, :apellido, :telefono, :arregloPersonasPermitidas
	def initialize (dni, tipoPersona, nombre, apellido, telefono)
		@dni = dni
		@tipoPersona = tipoPersona
		@nombre = nombre
		@apellido = apeelido
		@telefono = telefono
		@arregloPersonasPermitidas = []
	end

	def registrarPersonasPermitidas

	end

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
	attr_accessor :arregloHabitacion
	def initilize
		@arregloHabitacion = []
	end

	def registrarHabitacion
	end

	def registrarPropietario
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