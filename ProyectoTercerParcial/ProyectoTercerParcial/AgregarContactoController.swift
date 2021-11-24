//
//  AgregarContactoController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation
import UIKit

class AgregarContactoController : UIViewController {
    
    @IBOutlet weak var txtId: UITextField!
    @IBOutlet weak var txtCliente: UITextField!
    @IBOutlet weak var txtHabitacion: UITextField!
    @IBOutlet weak var txtTipo: UITextField!
    @IBOutlet weak var txtReservacion: UITextField!
    @IBOutlet weak var txtHuespedes: UITextField!
    @IBOutlet weak var txtCelular: UITextField!
    @IBOutlet weak var txtCorreo: UITextField!
    @IBOutlet weak var txtFecha: UITextField!
    @IBOutlet weak var txtPrecio: UITextField!
    
    
    var callBackAgregarReservacion : ((Reservacion) -> Void)?
    override func viewDidLoad() {
        self.title = "Agregar Reservacion"
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        let id = txtId.text!
        let cliente = txtCliente.text!
        let habitacion = txtHabitacion.text!
        let tipo = txtTipo.text!
        let reservacion = txtReservacion.text!
        let huespedes = txtHuespedes.text!
        let celular = txtCelular.text!
        let correo = txtCorreo.text!
        let fecha = txtFecha.text!
        let precio = txtPrecio.text!
        
        let reservacionSolicitud = Reservacion(id: id, cliente: cliente, habitacion: habitacion, tipo: tipo, reservacion: reservacion, huespedes: huespedes, celular: celular, correo: correo, fecha: fecha, precio: precio)
        callBackAgregarReservacion!(reservacionSolicitud)
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
