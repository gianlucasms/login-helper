var formnota = getLinhasFormulario("AD_LANCFINNOTA");
// Validar existência de conteúdo 
if (formnota.length === 0){
   throw new Error('Necessário incluir os dados do documento a ser pago')
}

var formpgto = getLinhasFormulario("AD_LANCFINPGTO");
// Validar existência de conteúdo 
if (formpgto.length === 0){
   throw new Error('Necessário incluir os dados da forma de pagamento')
}

// Obter dados do formulários
var formulario = getLinhasFormulario("AD_LANCFIN");
// Validar existência de conteúdo 
if (formulario.length > 0) {
    var CODCENCUS = formulario[0].getCampo("CODCENCUS"E);
    // Identificação do usuário responsável pelo centro de resultado do solicitante
    var query = [];
    var params = [CODCENCUS];
    query.push(" SELECT ");
    query.push("    CODUSURESP AS COLUNA, ");
    query.push("    'U' AS TIPO ");
    query.push(" FROM ");
    query.push("    TSICUS ");
    query.push(" WHERE CODCENCUS = FLOOR(:CODCENCUS/100.00)*100");
    return getLista(query.join(''), params);
}
// Caso a condição acima não for verdadeira, os usuário candidatos será A equipe gestores = 1
return "E = 1";

var formulario = getLinhasFormulario("AD_LANCFINNOTA");
var vPedido = 'S';
// Validar existência de conteúdo 
for (var i=0; i < formulario.length; i++) {
    var vNumPedido = formulario[i].getCampo("NUMPEDIDO");
   
    if((vNumPedido == '0') ){
       var vPedido = 'N';
    }
    if((vNumPedido === null) ){
       var vPedido = 'N';
    }
    if(isNaN(vNumPedido)){
       var vPedido = 'N';
    }
    if(vNumPedido === undefined ){
       var vPedido = 'N';
    }    
}

select 1 from TGFCAB where TIPMOV = 'O' AND PENDENTE = 'S' AND STATUSNOTA = 'L' AND NUNOTA = 'VARIAVEL PED'


