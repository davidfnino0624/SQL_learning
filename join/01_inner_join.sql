select * from services
inner join users on users.user_id = services.user_id;

select * from cleaners
inner join services on cleaners.cleaner_id = services.cleaner_id order by cleaners.cleaner_id asc;

select users.name, payment_method.type from payment_method
inner join users on users.user_id = payment_method.user_id;

select users.name, payment_method.type, services.id_service from payment_method
join users on users.user_id = payment_method.user_id
join services on payment_method.user_id = services.user_id;