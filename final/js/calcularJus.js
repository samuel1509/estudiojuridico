function calcularTotal(){
    console.log("Ingreso a calcularTotal")
    let cant= document.getElementById("cant").value
    console.log(cant)
    if (cant>=1) {
        let total=cant*13860
    console.log(total)
    document.getElementById("total").innerHTML=total
    } else {
        document.getElementById("total").innerHTML="Debe ingresar una cantidad mayor o igual a 1"
    }
      
}

