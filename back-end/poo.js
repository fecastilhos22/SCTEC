class Veiculo{
    constructor(fabricante,marca,ano,tipo,qtdPortas){
        this.fabricante = fabricante;//propriedade da classe
        this.modelo = modelo;//propriedade da classe
        this.ano = ano;//propriedade da classe
        this.tipo = tipo;//propriedade da classe
        this.qtdPortas = qtdPortas;//propriedade da classe
    }
    mostrarDadosDoVeiculo()
    {
        console.log(`${this.fabricante} ${this.modelo}, ${this.ano} (${this.tipo}), ${this.qtdPortas} portas  `);
    }

    mostrarModelo(){
        console.log(`O modelo do carro é ${this.modelo}`);
    }
    acelerar(){
        console.log("Acelerando...");
    }
}    

class Moto {
    constructor(fabricante,marca,ano){
        this.fabricante = fabricante;//propriedade da classe
        this.modelo = modelo;//propriedade da classe
        this.ano = ano;//propriedade da classe
    }
    mostrarDadosDaMoto()
    {
        console.log(`${this.fabricante} ${this.modelo}, ${this.ano} (${this.tipo}) `);
    }

    mostrarModelo(){
        console.log(`O modelo do carro é ${this.modelo}`);
    }
    acelerar(){
        console.log("Acelerando...");
    }
}

class Moto extends Veiculo {
    constructor(fabricante,modelo,ano,cilindradas){
        super(fabricante,modelo,ano);
        this.cilindradas = cilindradas;
    }

    mostrarDadosDoVeiculo()
    {
        console.log(`${this.fabricante} ${this.modelo}, ${this.ano}, ${this.cilindradas} cilindradas`);
    }

}

class Carro extends Veiculo {
    constructor(fabricante,modelo,ano,tipo,qtdPortas){
        super(fabricante,modelo,ano,tipo,qtdPortas);
    }
}

/*class Carro {
    constructor(fabricante,marca,ano,tipo,qtdPortas){
        this.fabricante = fabricante;//propriedade da classe
        this.modelo = modelo;//propriedade da classe
        this.ano = ano;//propriedade da classe
        this.tipo = tipo;//propriedade da classe
        this.qtdPortas = qtdPortas;//propriedade da classe
    }
    mostrarDadosDoCarro()
    {
        console.log(`${this.fabricante} ${this.modelo}, ${this.ano} (${this.tipo}), ${this.qtdPortas} portas `);
    }

    mostrarModelo(){
        console.log(`O modelo do carro é ${this.modelo}`);
    }
    acelerar(){
        console.log("Acelerando...");
    }
}*/

const meuCarro = new Carro("Ford", "Ka", "2008","Sedan",4);
const minhaMoto = new Moto("Yamaha","K2","2008", "300");
meuCarro.mostrarDadosDoVeiculo();
minhaMoto.mostrarDadosDoVeiculo();
/*meuCarro.mostrarModelo();
meuCarro.acelerar();*/

