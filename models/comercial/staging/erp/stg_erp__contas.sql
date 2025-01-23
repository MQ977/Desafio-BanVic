with 
 contas as (
    select
    cast(num_conta as int) as numero_da_conta
    , cast(cod_cliente as int) as codigo_cliente
    , cast(cod_agencia as int) as codigo_agencia
    , cast(cod_colaborador as int) as codigo_colaborador
    , cast(tipo_conta as string) as tipo_conta
    , cast(data_abertura as TIMESTAMP) as data_abertura
    , cast(saldo_total as string) as saldo_t
    , cast(saldo_disponivel as string) as saldo_d
    , cast(data_ultimo_lancamento as TIMESTAMP) as data_ultimo_lancamento
    
    from {{source('desafio_banvic','contas')}}
) 

select *
from contas