var database = require("../database/config");

function votar(idPiloto, limite_linhas) {
    instrucaoSql = `INSERT INTO
    Votacao (fkPiloto) 
    VALUES (${idPiloto})`;
    console.log('Executando instrução SQL:' + instrucaoSql)
    return database.executar(instrucaoSql);
}

function buscarUltimasMedidas() {
    instrucaoSql = `SELECT nomePiloto, count(fkPiloto) as idVotacao FROM Piloto JOIN Votacao ON fkPiloto = idPiloto GROUP BY fkPiloto ORDER BY fKPiloto`;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarMedidasEmTempoReal(idPiloto) {
    instrucaoSql = `SELECT nomePiloto, count(fkPiloto) FROM Piloto JOIN Votacao ON fkPiloto = idPiloto GROUP BY fkPiloto ORDER BY fKPiloto`;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    votar,
    buscarUltimasMedidas,
    buscarMedidasEmTempoReal
}
