//
//  Contacto.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation

class Reservacion{
    var id : String
    var cliente : String
    var habitacion : String
    var tipo : String
    var reservacion : String
    var huespedes : String
    var celular : String
    var correo : String
    var fecha : String
    var precio: String

    init(id: String, cliente: String, habitacion: String, tipo: String, reservacion: String, huespedes: String, celular: String, correo: String, fecha: String, precio: String){
        self.id = id
        self.cliente = cliente
        self.habitacion = habitacion
        self.tipo = tipo
        self.reservacion = reservacion
        self.huespedes = huespedes
        self.celular = celular
        self.correo = correo
        self.fecha = fecha
        self.precio = precio
    }
}
