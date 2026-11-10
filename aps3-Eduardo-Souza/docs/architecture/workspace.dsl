workspace "AutoFlow Monitor - Rastreabilidade de Pecas" "Arquitetura proposta para consulta do historico de pecas, ciclos de usinagem e testes de estanqueidade." {

    model {
        analista = person "Analista de Qualidade" "Consulta o historico de uma peca para analisar ciclos de usinagem, testes e retestes."

        sistema = softwareSystem "AutoFlow Monitor" "Plataforma de monitoramento e rastreabilidade industrial." {
            web = container "Aplicacao Web" "Interface para pesquisa e visualizacao da linha do tempo da peca." "React + TypeScript" "Web Browser"
            api = container "API de Rastreabilidade" "Valida a consulta, coordena a busca e consolida os eventos da peca." "Node.js + TypeScript" "REST/HTTPS"
            db = container "Banco de Dados" "Armazena pecas, ciclos de usinagem, testes de estanqueidade e retestes." "PostgreSQL 16" "Relational Database"
        }

        analista -> web "Pesquisa uma peca e consulta seu historico" "HTTPS"
        web -> api "Solicita o historico pelo identificador da peca" "JSON/HTTPS"
        api -> db "Consulta dados da peca, ciclos, testes e retestes" "SQL/TLS"
    }

    views {
        container sistema "Containers" {
            include *
            autoLayout lr
        }
        styles {
            element "Person" {
                shape person
                background "#08427b"
                color "#ffffff"
            }
            element "Software System" {
                background "#1168bd"
                color "#ffffff"
            }
            element "Container" {
                background "#438dd5"
                color "#ffffff"
            }
        }
    }
}
