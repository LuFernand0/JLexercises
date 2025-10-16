struct DataComTipo 
    dia :: Int
    mes :: String
    ano :: Int
end

const MESES = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"]
function DataComTipo(dia::Int, mes::Int, ano::Int)
    for m = 1:12
        if mes == m || 0 < mes <= 12
            if 0 < dia <= 29
                return DataComTipo(dia, MESES[mes], ano)
            elseif dia == 30 && mes != 2
                return DataComTipo(dia, MESES[mes], ano)
            elseif  dia == 31 && in(mes, [1, 3, 5, 7, 8, 10, 12])
                return DataComTipo(dia, MESES[mes], ano)
            elseif dia > 31
                return error("Dia inválido")
            end
            error("Dia inválido para o mês inserido")
        end
        error("Mês inserido não existe")
    end
end
