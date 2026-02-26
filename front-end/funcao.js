function mostraSaudacao()
{
    const nome = document.getElementById('nome').value;
    const hora = parseInt (document.getElementById('hora').value,10);
    const mensagem = document.getElementById('mensagem');
    mensagem.innerHTML = saudacaoPersonalida(nome,hora);
}

function saudacaoPersonalida(nome,hora)
{
    if(hora < 12)
    {
        return "Bom dia, " + nome + "!";
    }
    else if (hora > 12 && hora <18)
    {
        return "Boa tarde, " + nome + "!";
    }
    else if (hora > 18)
    {
        return "Boa noite, " + nome + "!";
    }
    else
    {
        return "";
    }
    
}