with 
 colaboradores as (
    select
    cast(cod_colaborador  as int) as codigo_colaborador
    , cast(cod_agencia  as int) as codigo_agencia
    from {{source('desafio_banvic','colaborador_agencia')}}
) 

select *
from colaboradores