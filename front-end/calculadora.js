function efetuaOperacao()
{
    let num1 = parseFloat(document.getElementById("num1").value);
    let num2 = parseFloat(document.getElementById("num2").value);
    let operador = (document.getElementById("operador").value);
    let resultado;

    switch (operador) {

        case "+":
            resultado = num1 + num2;
            break;
         case "-":
            resultado = num1 - num2;
            break;
         case "*":
            resultado = num1 * num2;
            break;
         case "/":
            if(num2 ==0)
             {
            resultado = "Divisão por 0 é inválida";
             }
            else
            {
             resultado = num1 / num2;
            }
            break;  
        default:
            resultado = "Operador inválido!"              
    }

    document.getElementById("resultado").innerHTML = "Resultado: " + resultado;

}