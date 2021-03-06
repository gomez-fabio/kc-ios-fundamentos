//: # Funciones como valores


// Funciones como valores de retorno (otra funcion)

typealias IntToInt = (Int)->Int


//devuelve una funcion IntToInt
func adder(n: Int) -> IntToInt {
    func f(x: Int) -> Int {
        return x + n
    }
    return f
}


let a = adder(n: 12)

a(3)


// Funciones como parametros de Entrada

func apply( f: IntToInt, n: Int) -> Int{
    return f(n)
}

apply(f: a, n: 3)



// Sintaxis de Clausura

func z(n: Int) -> Int{
    return n + 1
}

//lo mismo que lo anterior
let z1 = {(n: Int) in return n+1}

z(n: 8)
z1(8)


// Las funciones ser tipos como cualquier otro, se pueden meter en colecciones

let fs = [z1, z]



// Sintaxis abreviada de clausuras

let clausuras = [z,
                 {(n:Int) in return n + 1},
                 {n in return n + 1},        // El tipo del parametro se infiere de la primera funcion
                 {n in n + 1},               // Se el cuerpo solo tiene una linea se infiere el return
                 {$0 + 1}                    // $0 indica posicion del parametro
 
]


// Sintaxis ultra-minimalista, se usa nucho en Swift , especialmente como clausuara finalizacion, es decir, callbacks

let evens = [6,12,2,8,4,10]
evens.sorted(by:{(a: Int, b: Int) in a > b})


// sintaxis claususa que cuelga

evens.sorted { (a: Int, b: Int) -> Bool in
    return (a > b)
}



// Operaciones sobre colecciones con programacion funcional
// Clasicos de program. Funcional : Map, Filter, flatmap

// Map:  iteraccion para Chuck Norris

var result = [Int]() //Array enteros vacios

for element in evens {
    result.append(element*4)
}
result

// ejemplo con Map
result = evens.map { $0 * 4 }   //devuelv eunnuevo array con los elementos multiplicado * 4

result




// Filter: elimina ciertos elementos de la coleccion

result = evens.filter {$0 > 6}
result


// FlatMap : un map  que se salta los niles

let intsOrNil : [Int?]  = [1,2,nil,4,7,nil]

let data = intsOrNil.flatMap {$0?.hashValue}
data









