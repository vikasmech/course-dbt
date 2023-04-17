select 
    user_id,
    lower(first_name) as first_name,
    lower(last_name) as last_name,
    email, 
    replace(phone_number, '-', '') as phone_number,
    created_at,
    updated_at,
    address_id
from {{ source('postgres', 'users')}}