var database =  require("../database/config");

function listar() {
    var instrucaoSql = `
        SELECT 
            * 
        FROM genero;
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
//falta alguma coisa aqui!
function cadastrar(nome) {
    var instrucaoSql = `
        INSERT INTO genero (nome) VALUES ('${nome}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    listar,
    cadastrar
}
