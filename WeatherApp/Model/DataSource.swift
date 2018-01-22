//
//  DataSource.swift
//  Weatherfy
//
//  Created by Eduardo Toledo on 12/13/17.
//  Copyright © 2017 SoSafe. All rights reserved.
//

import Foundation

//Se tiene un string con la información meteorológica de lluvia caida de varias ciudades, de la siguiente forma:

let data =
        "Rome:Jan 82.2,Feb 63.2,Mar 70.3,Apr 53.7,May 53.0,Jun 34.4,Jul 17.5,Aug 27.5,Sep 60.9,Oct 117.7,Nov 111.0,Dec 97.9" + "\n" +
        "London:Jan 44.0,Feb 38.9,Mar 38.9,Apr 42.2,May 47.3,Jun 52.1,Jul 59.5,Aug 57.2,Sep 55.4,Oct 63.0,Nov 59.0,Dec 52.9" + "\n" +
        "Paris:Jan 182.3,Feb 120.6,Mar 158.1,Apr 204.9,May 323.1,Jun 300.5,Jul 236.8,Aug 192.9,Sep 66.3,Oct 63.3,Nov 83.2,Dec 154.7" + "\n" +
        "NY:Jan 108.7,Feb 101.8,Mar 131.9,Apr 93.5,May 98.8,Jun 93.6,Jul 102.2,Aug 131.8,Sep 94.0,Oct 82.3,Nov 107.8,Dec 94.2" + "\n" +
        "Vancouver:Jan 145.7,Feb 121.4,Mar 102.3,Apr 69.2,May 55.8,Jun 47.1,Jul 31.3,Aug 37.0,Sep 54.6,Oct 116.3,Nov 154.6,Dec 171.5" + "\n" +
        "Sydney:Jan 103.4,Feb 111.0,Mar 131.3,Apr 129.7,May 123.0,Jun 129.2,Jul 102.8,Aug 80.3,Sep 69.3,Oct 82.6,Nov 81.4,Dec 78.2" + "\n" +
        "Bangkok:Jan 11.6,Feb 28.2,Mar 30.7,Apr 71.8,May 189.4,Jun 151.7,Jul 158.2,Aug 185.0,Sep 313.9,Oct 230.8,Nov 57.3,Dec 9.4" + "\n" +
        "Tokyo:Jan 49.9,Feb 71.5,Mar 106.4,Apr 129.2,May 144.0,Jun 176.0,Jul 135.6,Aug 148.5,Sep 214.4,Oct 194.1,Nov 95.6,Dec 54.4" + "\n" +
        "Beijing:Jan 3.9,Feb 4.7,Mar 8.2,Apr 18.4,May 33.0,Jun 78.1,Jul 224.3,Aug 170.0,Sep 57.4,Oct 18.0,Nov 9.3,Dec 2.7" + "\n" +
        "Lima:Jan 1.3,Feb 0.9,Mar 0.7,Apr 0.4,May 0.7,Jun 1.8,Jul 4.4,Aug 3.1,Sep 3.3,Oct 1.7,Nov 0.5,Dec 0.7"

// Implementar la funcion `mean` que calcule el promedio de lluvia caida en la ciudad `town`, dado el string `data`.
func mean(data: String, in town: String) -> Double
{
    return 0.0
}

// Implementar la funcion `variance` que calcule la varianza de lluvia caida en la ciudad `town`, dado el string `data`.
// Se puede encontrar cómo calcular la varianza en el siguiente link
// http://www.mathsisfun.com/data/standard-deviation.html
func variance(data: String, in town: String) -> Double
{
    
    return 0.0
}

//Si la ciudad dada `town` no se encuentra en la base de datos `data`, ambas funciones deben retornar -1

//Casos de prueba:
// mean(data: data, in: "London") // 53.7(08333...)
// variance(data: data, in: "NY") // 277.7(2305...)
// mean(data: data, in: "Santiago") // -1
