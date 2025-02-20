select users.name, payment_method.type, services.id_service from payment_method
left join users on users.user_id = payment_method.user_id
left join services on payment_method.user_id = services.user_id;


select * from cleaners
left join services on services.cleaner_id = cleaners.cleaner_id;

select * from services
left join cleaners on services.cleaner_id = cleaners.cleaner_id;