//
//  ViewController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import UIKit

var reservaciones : [Reservacion] = []

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvReservaciones: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reservaciones.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaContacto") as! CeldaContactoController
        
        celda.lblCliente.text = "\("Nombre: ") \(reservaciones[indexPath.row].cliente)"
        celda.lblHabitacion.text = "\("NO. Habitacion: ") \(reservaciones[indexPath.row].habitacion)"
        celda.lblReservacion.text = "\("NO. Reservacion: ") \(reservaciones[indexPath.row].reservacion)"
        celda.lblFecha.text = reservaciones[indexPath.row].fecha
        
        return celda
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToVer" {
            let reservacionSeleccionada = reservaciones[tvReservaciones.indexPathForSelectedRow!.row]
            let destino = segue.destination as! VerContactoController
            destino.reservacion = reservacionSeleccionada
            destino.indice = tvReservaciones.indexPathForSelectedRow!.row
            destino.callbackActualizarTVReservaciones = actualizarTVReservaciones
            destino.callbackEliminarReservacion = eliminarReservacion
        }
        
        if segue.identifier == "goToCreacion" {
            let destino = segue.destination as! AgregarContactoController
            destino.callBackAgregarReservacion = agregarReservacion
        }
    }
    
    
    override func viewDidLoad() {
        self.title = "Lista de Reservaciones"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        reservaciones.append(Reservacion(id: "1", cliente: "Fabian Lopez", habitacion: "70", tipo: "Clasica", reservacion: "5421", huespedes: "2", celular: "23232323", correo: "fabian@correo.com", fecha: "01/11/21", precio: "$1200"))
        reservaciones.append(Reservacion(id: "2", cliente: "Maria Ramirez", habitacion: "23", tipo: "Clasica", reservacion: "5428", huespedes: "3", celular: "21212121", correo: "maria@correo.com", fecha: "02/11/21", precio: "$1700"))
        reservaciones.append(Reservacion(id: "3", cliente: "Martin Sanchez", habitacion: "202", tipo: "Deluxe", reservacion: "5465", huespedes: "1", celular: "73737373", correo: "martin@correo.com", fecha: "03/11/21", precio: "$4000"))
        reservaciones.append(Reservacion(id: "4", cliente: "Pedro Hernandez", habitacion: "107", tipo: "Clasica", reservacion: "5502", huespedes: "4", celular: "28282828", correo: "pedro@correo.com", fecha: "05/11/21", precio: "$2300"))
        reservaciones.append(Reservacion(id: "5", cliente: "Sandra Diaz", habitacion: "249", tipo: "Deluxe", reservacion: "5555", huespedes: "2", celular: "25252525", correo: "sandra@correo.com", fecha: "06/11/21", precio: "$6100"))
        reservaciones.append(Reservacion(id: "6", cliente: "Jesus Gonzalez", habitacion: "32", tipo: "Clasica", reservacion: "5598", huespedes: "2", celular: "71717171", correo: "jesus@correo.com", fecha: "06/11/21", precio: "$1200"))
        reservaciones.append(Reservacion(id: "7", cliente: "Jose Portillo", habitacion: "222", tipo: "Deluxe", reservacion: "5632", huespedes: "1", celular: "78787878", correo: "jose@correo.com", fecha: "07/11/21", precio: "$4000"))
        reservaciones.append(Reservacion(id: "8", cliente: "Perla Cervantes", habitacion: "299", tipo: "Deluxe", reservacion: "5670", huespedes: "3", celular: "75757575", correo: "perlaa@correo.com", fecha: "07/11/21", precio: "$8500"))
        reservaciones.append(Reservacion(id: "9", cliente: "Ernesto Fernandez", habitacion: "13", tipo: "Clasica", reservacion: "5712", huespedes: "2", celular: "61616161", correo: "ernesto@correo.com", fecha: "08/11/21", precio: "$1200"))
        reservaciones.append(Reservacion(id: "10", cliente: "Rocio Garcia", habitacion: "69", tipo: "Clasica", reservacion: "5724", huespedes: "2", celular: "66666666", correo: "rocio@correo.com", fecha: "08/11/21", precio: "$1200"))    }
    
    func actualizarTVReservaciones() {
        tvReservaciones.reloadData()
    }
    
    func eliminarReservacion(indice : Int) {
        reservaciones.remove(at: indice)
        actualizarTVReservaciones()
    }
    
    func agregarReservacion(reservacion: Reservacion) {
        reservaciones.append(reservacion)
        actualizarTVReservaciones()
    }
}

