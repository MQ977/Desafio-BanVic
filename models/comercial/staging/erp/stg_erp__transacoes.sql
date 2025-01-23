with 
 transacoes as (
    select
    cast(cod_transacao as int) as codigo_transacao
    , cast(num_conta as int) as num_conta
    , cast(data_transacao as TIMESTAMP) as data_transacao
    , cast(nome_transacao as string) as tipo_de_transacao
    , cast(valor_transacao as numeric) as valor_transacao   
    from {{source('desafio_banvic','transacoes')}}
) 

select *
from transacoes