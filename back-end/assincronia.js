/*function alerta (){
    console.log("Alerta");
}

setTimeout(() => {
    console.log("Alerta");//primeiro parametro a "função" que ele vai fazer
},3000);// tempo que ele vai fazer

setInterval(() => {
    console.log("Alerta");//primeiro parametro a "função" que ele vai fazer(repetindo dentro do intervalo estipulado)
},3000);// tempo que ele vai fazer no intervalo(a cada 3 segundos)*/

console.log ("Inicio da execução");

function buscaDadosDoServidos(){

    //codigo que busca dados do servidor
    return new Promise ((resolve,reject) => {
         console.log("Buscando dados do servidor");

         setTimeout(()=>{
            let sucesso = Math.random > 0.5;

            if (sucesso){
                resolve ("Dados recebidos com sucesso");
            }
            else{
                 reject ("falha ao buscar dados do servidor");
                } 
        },2000);    
    });
}//define a função assincrona
 
/*buscaDadosDoServidos()
    .then((mensagem) => {
        console.log(mensagem);
})
    .catch((erro) => {
    console.error(erro);
});*/

const minhaFuncaoAssincrona = async () => {
    try{
        const resultado = await buscaDadosDoServidos();
        console.log(resultado);
    }
    catch(erro){
        console.erro(erro);
    }
} 

 minhaFuncaoAssincrona();//executa a função assincrona

console.log ("Final da execução");


