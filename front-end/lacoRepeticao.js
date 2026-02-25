const carros = ["Uno", "Fusca", "Escort","Gol"];

const conteudo = document.getElementById("conteudo");

let dados = "";
let i = 0;

while(i < 4)
{
    dados += "<p>"+carros[i]+"</p>";/*O += vai concatenando (acrescentando)os valores e não subistituindo se fosse só o = */
    i++;/*incremento*/

}

const secao = document.createElement("div");
secao.innerHTML = <h2>Loop while</h2>;
conteudo.appendChild(secao);

<div>
    <h2>Loop While</h2>
    <p>Uno</p>
    <p>Fusca</p>
    <p>Escort</p>
    <p>Gol</p>
</div>