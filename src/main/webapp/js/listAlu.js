let contador=0
function addAlum() {
    contador++
    let tbody=document.querySelector("#tbody")

    let tr=document.createElement("tr")
    tr.setAttribute("id",contador)

    let tdId=document.createElement("td")
    tdId.innerHTML=contador
    tr.appendChild(tdId)

    let tdNom=document.createElement("td")
    tdNom.innerHTML="Juan"
    tr.appendChild(tdNom)

    let tdApe=document.createElement("td")
    tdApe.innerHTML="Perez"
    tr.appendChild(tdApe)

    let tdDni=document.createElement("td")
    tdDni.innerHTML="23555455"
    tr.appendChild(tdDni)

    let tdDel=document.createElement("td")
    tdDel.innerHTML=`<i class="bi bi-trash3-fill" onclick="delAlum(${contador})"></i>`
    tr.appendChild(tdDel)    

    tbody.appendChild(tr)
}

function delAlum(id) {
    let tbody=document.getElementById("tbody")

    let tr=document.getElementById(id)

    tbody.removeChild(tr)
}