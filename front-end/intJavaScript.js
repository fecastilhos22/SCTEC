/*let NOMEDOIS='BATMAN' so pode ser acessado dentro do bloco que ele foi declarado(forma mais nova de declarar)
  const NOMETRES='SUPERMAN' quando não muda
  var NOMEUM ='LANTERNA VERDE'
  var num1 =5;
  function varTeste1()
  {
    let num1 = 1;
    console.log(num1);
  }

  varTeste1();
  console.log(num1)*/

function verificaAprovacao()
{
  let nota = document.getElementById("nota").value;
  console.log("Nota inserida: ",nota);
  
  if (nota >=7)
  {
      document.getElementById("resultado").innerHTML= "Aluno(a) Aprovado(a)!"
      alert("Aluno(a) Aprovado(a)!")
  }
  else
  {
      document.getElementById("resultado").innerHTML= "Aluno(a) Reprovado(a)!"
      alert("Aluno(a) Reprovado(a)!")
  }
 

  console.log(nota);
}