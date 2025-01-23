with 
 propostas_credito as (
    select
    cast(cod_proposta as int) as codigo_proposta
    , cast(cod_cliente as int) as codigo_cliente
    , cast(cod_colaborador as int) as codigo_colaborador
    , cast(data_entrada_proposta as TIMESTAMP) as data_entrada_proposta
    , cast(taxa_juros_mensal as numeric) as tx_juros
    , cast(valor_proposta as numeric) as valor_proposta
    , cast(valor_financiamento as numeric) as valor_financiamento
    , cast(valor_entrada as numeric) as valor_entrada
    , cast(valor_prestacao as numeric) as valor_prestacao
    , cast(quantidade_parcelas as int) as quantidade_parcelas
    , cast(carencia as int) as n_carencia
    , cast(status_proposta as string) as status
    
    from {{source('desafio_banvic','propostas_credito')}}
) 

select *
from propostas_credito