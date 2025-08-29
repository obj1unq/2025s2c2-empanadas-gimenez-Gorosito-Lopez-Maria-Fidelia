//Objetos


//Empleado
object galvan {
  var sueldo = 15000
  var deuda = 0
  var dinero = 0
  method sueldo(_sueldo){
    sueldo = _sueldo
    //Metodo para poder actualizar el sueldo
  }
  method sueldo(){
    return sueldo
    //Getter del sueldo
  }
  method cobrar(){
    /*NO puedo cobrar hasta pagar la deuda entonces la plata que llega se va para pagar la deuda en caso que sobre se agrega a dinero
    por lo tanto tenemos dos casos cuando la deuda es mayor o menor/igual
    1: La deuda es MENOR O IGUAL a el sueldo pago la deuda dinero = (self.sueldo - deuda) ademas se cancela la deuda: deuda = 0
    2: La deuda es MAYOR al sueldo la deuda se reduce pero sigue existiendo deuda (la deuda debe quedar positiva) */
    if (deuda <= sueldo){
        dinero = dinero + (self.sueldo() - deuda)
        deuda = 0
    }
    else{
        deuda = deuda - self.sueldo()
    }
  }
  method gastar(cantidad){
    if (dinero >= cantidad){
        dinero = dinero - cantidad
    } else {
        deuda = deuda + (cantidad - dinero)
        dinero = 0
    }
  }
  method pagarDeuda(){
    if (deuda > sueldo){
        deuda = deuda - sueldo
        dinero = sueldo - deuda
    }
    else{
        deuda()
    }
  }
  method deuda(){
    return deuda
  }
  method dinero(){
    return dinero
  }

}


//Empleado
object baigorria {
  var totalCobrado = 0
  var cantidadEmpanadasVendidas = 0
  const precioEmpanada = 15 //va var
  method cantidadEmpanadasVendidas(empanadas) {
    cantidadEmpanadasVendidas = cantidadEmpanadasVendidas + empanadas
  }
  method sueldo(){
    return cantidadEmpanadasVendidas * precioEmpanada
  }
  method totalCobrado(){
    return totalCobrado
  }
  method cobrar(){
    //Si cobra es pq paso un mes, se suma al total de sueldo y resetea empanadas
    totalCobrado = totalCobrado + self.sueldo()
    cantidadEmpanadasVendidas = 0
  }
}

//Jefe
object gimenez {
  var fondoParaSueldos = 300000
  method pagarSueldoA(empleado){
    fondoParaSueldos = fondoParaSueldos - empleado.sueldo()
  }
}



