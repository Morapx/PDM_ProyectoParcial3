//
//  VerContactoController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation
import UIKit

class VerContactoController : UIViewController {
    
    var indice : Int = -1
    var reservacion : Reservacion?
    var callbackActualizarTVReservaciones : (() -> Void)?
    var callbackEliminarReservacion : ((Int) -> Void)?
    
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblCliente: UILabel!
    @IBOutlet weak var lblHabitacion: UILabel!
    @IBOutlet weak var lblTipo: UILabel!
    @IBOutlet weak var lblReservacion: UILabel!
    @IBOutlet weak var lblHuespedes: UILabel!
    @IBOutlet weak var lblCelular: UILabel!
    @IBOutlet weak var lblCorreo: UILabel!
    @IBOutlet weak var lblFecha: UILabel!
    @IBOutlet weak var lblPrecio: UILabel!
    
    @IBOutlet weak var lblIdEditar: UILabel!
    @IBOutlet weak var lblClienteEditar: UILabel!
    @IBOutlet weak var lblHabitacionEditar: UILabel!
    @IBOutlet weak var lblTipoEditar: UILabel!
    @IBOutlet weak var lblReservacionEditar: UILabel!
    @IBOutlet weak var lblHuespedesEditar: UILabel!
    @IBOutlet weak var lblCelularEditar: UILabel!
    @IBOutlet weak var lblCorreoEditar: UILabel!
    @IBOutlet weak var lblFechaEditar: UILabel!
    @IBOutlet weak var lblPrecioEditar: UILabel!
    
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
    
    @IBOutlet weak var btnBorrar: UIButton!
    @IBOutlet weak var btnEditar: UIButton!
    @IBOutlet weak var btnGuardar: UIButton!
    @IBOutlet weak var btnCancelar: UIButton!
    
    override func viewDidLoad() {
        self.title = "Ver Reservacion"
        
        lblId.text = "\("ID: ") \(reservacion!.id)"
        lblCliente.text = "\("Nombre: ") \(reservacion!.cliente)"
        lblHabitacion.text = "\("NO. Habitacion: ") \(reservacion!.habitacion)"
        lblTipo.text = "\("Tipo de Habitacion: ") \(reservacion!.tipo)"
        lblReservacion.text = "\("NO. Reservacion: ") \(reservacion!.reservacion)"
        lblHuespedes.text = "\("NO. Huespedes: ") \(reservacion!.huespedes)"
        lblCelular.text = reservacion!.celular
        lblCorreo.text = reservacion!.correo
        lblFecha.text = reservacion!.fecha
        lblPrecio.text = reservacion!.precio
        
        txtId.text = reservacion!.id
        txtCliente.text = reservacion!.cliente
        txtHabitacion.text = reservacion!.habitacion
        txtTipo.text = reservacion!.tipo
        txtReservacion.text = reservacion!.reservacion
        txtHuespedes.text = reservacion!.huespedes
        txtCelular.text = reservacion!.celular
        txtCorreo.text = reservacion!.correo
        txtFecha.text = reservacion!.fecha
        txtPrecio.text = reservacion!.precio
    }
    @IBAction func doTapEliminar(_ sender: Any) {
        callbackEliminarReservacion!(indice)
        self.navigationController!.popViewController(animated: true)
    }
    
    @IBAction func doTapEditar(_ sender: Any) {
        self.title = "Editar Reservacion"
        btnEditar.isEnabled = false
        btnEditar.isHidden = true
        btnBorrar.isEnabled = false
        btnBorrar.isHidden = true
        btnGuardar.isEnabled = true
        btnGuardar.isHidden = false
        btnCancelar.isEnabled = true
        btnCancelar.isHidden = false
        
        lblId.isHidden = true
        lblCliente.isHidden = true
        lblHabitacion.isHidden = true
        lblTipo.isHidden = true
        lblReservacion.isHidden = true
        lblHuespedes.isHidden = true
        lblCelular.isHidden = true
        lblCorreo.isHidden = true
        lblFecha.isHidden = true
        lblPrecio.isHidden = true
        
        lblIdEditar.isHidden = false
        lblClienteEditar.isHidden = false
        lblHabitacionEditar.isHidden = false
        lblTipoEditar.isHidden = false
        lblReservacionEditar.isHidden = false
        lblHuespedesEditar.isHidden = false
        lblCelularEditar.isHidden = false
        lblCorreoEditar.isHidden = false
        lblFechaEditar.isHidden = false
        lblPrecioEditar.isHidden = false
        
        txtId.isEnabled = true
        txtId.isHidden = false
        txtCliente.isEnabled = true
        txtCliente.isHidden = false
        txtHabitacion.isEnabled = true
        txtHabitacion.isHidden = false
        txtTipo.isEnabled = true
        txtTipo.isHidden = false
        txtReservacion.isEnabled = true
        txtReservacion.isHidden = false
        txtHuespedes.isEnabled = true
        txtHuespedes.isHidden = false
        txtCelular.isEnabled = true
        txtCelular.isHidden = false
        txtCorreo.isEnabled = true
        txtCorreo.isHidden = false
        txtFecha.isEnabled = true
        txtFecha.isHidden = false
        txtPrecio.isEnabled = true
        txtPrecio.isHidden = false
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        self.title = "Ver Reservacion"
        btnEditar.isEnabled = true
        btnEditar.isHidden = false
        btnBorrar.isEnabled = true
        btnBorrar.isHidden = false
        btnGuardar.isEnabled = false
        btnGuardar.isHidden = true
        btnCancelar.isEnabled = false
        btnCancelar.isHidden = true
        
        lblId.isHidden = false
        lblCliente.isHidden = false
        lblHabitacion.isHidden = false
        lblTipo.isHidden = false
        lblReservacion.isHidden = false
        lblHuespedes.isHidden = false
        lblCelular.isHidden = false
        lblCorreo.isHidden = false
        lblFecha.isHidden = false
        lblPrecio.isHidden = false
        
        lblIdEditar.isHidden = true
        lblClienteEditar.isHidden = true
        lblHabitacionEditar.isHidden = true
        lblTipoEditar.isHidden = true
        lblReservacionEditar.isHidden = true
        lblHuespedesEditar.isHidden = true
        lblCelularEditar.isHidden = true
        lblCorreoEditar.isHidden = true
        lblFechaEditar.isHidden = true
        lblPrecioEditar.isHidden = true
        
        txtId.isEnabled = false
        txtId.isHidden = true
        txtCliente.isEnabled = false
        txtCliente.isHidden = true
        txtHabitacion.isEnabled = false
        txtHabitacion.isHidden = true
        txtTipo.isEnabled = false
        txtTipo.isHidden = true
        txtReservacion.isEnabled = false
        txtReservacion.isHidden = true
        txtHuespedes.isEnabled = false
        txtHuespedes.isHidden = true
        txtCelular.isEnabled = false
        txtCelular.isHidden = true
        txtCorreo.isEnabled = false
        txtCorreo.isHidden = true
        txtFecha.isEnabled = false
        txtFecha.isHidden = true
        txtPrecio.isEnabled = false
        txtPrecio.isHidden = true
        
        reservacion!.id = txtId.text!
        reservacion!.cliente = txtCliente.text!
        reservacion!.habitacion = txtHabitacion.text!
        reservacion!.tipo = txtTipo.text!
        reservacion!.reservacion = txtReservacion.text!
        reservacion!.huespedes = txtHuespedes.text!
        reservacion!.celular = txtCelular.text!
        reservacion!.correo = txtCorreo.text!
        reservacion!.fecha = txtFecha.text!
        reservacion!.precio = txtPrecio.text!
        
        lblId.text = txtId.text!
        lblCliente.text = txtCliente.text!
        lblHabitacion.text = txtHabitacion.text!
        lblTipo.text = txtTipo.text!
        lblReservacion.text = txtReservacion.text!
        lblHuespedes.text = txtHuespedes.text!
        lblCelular.text = txtCelular.text!
        lblCorreo.text = txtCorreo.text!
        lblFecha.text = txtFecha.text!
        lblPrecio.text = txtPrecio.text!
        
        callbackActualizarTVReservaciones!()
    }
    
    @IBAction func doTapCancelar(_ sender: Any) {
        self.title = "Ver Reservacion"
        btnEditar.isEnabled = true
        btnEditar.isHidden = false
        btnBorrar.isEnabled = true
        btnBorrar.isHidden = false
        btnGuardar.isEnabled = false
        btnGuardar.isHidden = true
        btnCancelar.isEnabled = false
        btnCancelar.isHidden = true
        
        lblId.isHidden = false
        lblCliente.isHidden = false
        lblHabitacion.isHidden = false
        lblTipo.isHidden = false
        lblReservacion.isHidden = false
        lblHuespedes.isHidden = false
        lblCelular.isHidden = false
        lblCorreo.isHidden = false
        lblFecha.isHidden = false
        lblPrecio.isHidden = false
        
        lblIdEditar.isHidden = true
        lblClienteEditar.isHidden = true
        lblHabitacionEditar.isHidden = true
        lblTipoEditar.isHidden = true
        lblReservacionEditar.isHidden = true
        lblHuespedesEditar.isHidden = true
        lblCelularEditar.isHidden = true
        lblCorreoEditar.isHidden = true
        lblFechaEditar.isHidden = true
        lblPrecioEditar.isHidden = true
        
        txtId.isEnabled = false
        txtId.isHidden = true
        txtCliente.isEnabled = false
        txtCliente.isHidden = true
        txtHabitacion.isEnabled = false
        txtHabitacion.isHidden = true
        txtTipo.isEnabled = false
        txtTipo.isHidden = true
        txtReservacion.isEnabled = false
        txtReservacion.isHidden = true
        txtHuespedes.isEnabled = false
        txtHuespedes.isHidden = true
        txtCelular.isEnabled = false
        txtCelular.isHidden = true
        txtCorreo.isEnabled = false
        txtCorreo.isHidden = true
        txtFecha.isEnabled = false
        txtFecha.isHidden = true
        txtPrecio.isEnabled = false
        txtPrecio.isHidden = true
        
        txtId.text = reservacion!.id
        txtCliente.text = reservacion!.cliente
        txtHabitacion.text = reservacion!.habitacion
        txtTipo.text = reservacion!.tipo
        txtReservacion.text = reservacion!.reservacion
        txtHuespedes.text = reservacion!.huespedes
        txtCelular.text = reservacion!.celular
        txtCorreo.text = reservacion!.correo
        txtFecha.text = reservacion!.fecha
        txtPrecio.text = reservacion!.precio
    }
    
    
}
