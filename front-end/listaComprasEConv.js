const listaDeCompras = ["Arroz", "Feijão", "Ovos"];
console.log(listaDeCompras);
listaDeCompras [0] = "Farofa";
listaDeCompras [1] = "Farofa";
listaDeCompras [2] = "Farofa";/*substituindo os itens por farofa*/

listaDeCompras [3] = "Farofa";/*adicionar informando o indice*/
console.log(listaDeCompras);

listaDeCompras.push("Maça");/*adicionando o item sem informar o array*/
console.log(listaDeCompras);



length/*tamanho do array*/

const convidados = ['Sheila','Cleyton','Leticia'];
convidados.push("André");
console.log(convidados.length);
console.log(convidados[convidados.length -1]);

convidados[convidados.length] = "Paulo";
console.log(convidados);