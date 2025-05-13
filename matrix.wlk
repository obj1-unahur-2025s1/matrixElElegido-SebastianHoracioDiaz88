
object nave {

const pasajeros = #{neo, morfeo, triniti}

method pasajeros() = pasajeros 

method cuantosPasajeroshay() = pasajeros.size()

method pasajeroDeMayorVitalidad() = pasajeros.max({p=> p.vitalidad()})

method pasajeroDeMenorVitalidad() = pasajeros.min({p=> p.vitalidad()})

method estaEquilibrada () {
    return 

    self.pasajeroDeMayorVitalidad().vitalidad() 
    < 
    (self.pasajeroDeMenorVitalidad().vitalidad() * 2)

}

method estaElElegido () = pasajeros.any({p => p.esElElegido()})

method chocar() {

    pasajeros.forEach({
        p=> p.saltar()
    })

    pasajeros.clear()
}

method acelerar() {

    pasajeros.filter({p=> !p.esElElegido()}).forEach({p=> p.saltar()})
    pasajeros.remove({p=> p.esElElegido()})
}

}


object neo {
    var energia = 100

    method esElElegido() = true
    
    method saltar () {
    energia = energia / 2
    }

    method vitalidad() = energia * 0.1
}


object morfeo {

    var vitalidad = 8

    var estaDescansado = true

    method estaDescansado () = estaDescansado

    method esElElegido() = false

    method saltar () {
    
        estaDescansado = !estaDescansado
        
        vitalidad = (vitalidad - 1).max(0)
        
    }

    method vitalidad() = vitalidad

}


object triniti {
    

    method vitalidad () = 0

    method esElElegido() = false

    method saltar () {
    
    } 

}

