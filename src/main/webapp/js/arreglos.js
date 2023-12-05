let edad=23
edad=45

if (edad>=18) {
    console.log("mayor edad")
}

/** arreglo
 * variable especial puede contener más de un valor a la vez
*/
let sueldo1=50000
let sueldo2=60000
let sueldo3=70000
let sueldo4=80000
let sueldo5=90000


sueldo1=sueldo1+sueldo1*10/100 //es lo mismo que +=
sueldo2+=sueldo2*10/100
sueldo3+=sueldo3*10/100
sueldo4+=sueldo4*10/100
sueldo5+=sueldo5*10/100


let sueldos=[50000,60000,70000,80000,90000]
sueldos[0] //accedo al sueldo en el índice 0 50000
sueldos[4] //accedo al sueldo en el índice 4 90000
sueldos[0]=55000 //modifico el valor en el índice 0

//utilzamos indices y modificamos el array
let a=3
for (let i = 0; i < sueldos.length; i++) {
    sueldos[i]+=sueldos[i]*10/100
}


//no utilizamos indices y no modificamos el array
for (let suel of sueldos) {
    suel+=suel*10/100
}

let marcas=["Renault","BMW","Volvo","Fiat","Volkswagen"]
marcas.length
marcas.sort()
marcas.pop()
marcas.push("Mercedes Benz")
let indice=marcas.indexOf("BMW")
indice=marcas.indexOf("Fiat")

// matriz
let butacas=[
    ["A1","A2","A3"], //fila A
    ["B1","B2","B3","B4"], //fila b
    ["C1","C2"] //fila C
]



butacas[0][0]
butacas[1][2]
butacas[2][1]="CCC"


for (let i = 0; i < butacas.length; i++) {
    for (let j = 0; j < butacas[i].length; j++) {
        butacas[i][j]
    }
    
}

for (let fila of butacas) {
    for (let col of fila) {
        butacas[i][j]
    }
}


let array3D=[
    [
        [12,22,33],
        [22,33,1233],
    ],
    [
        [12,22,33],
        [22,33,1233],
    ],
    [
        [12,22,33],
        [22,33,1233],
    ]    
]