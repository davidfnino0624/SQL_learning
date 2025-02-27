-- se le conoce como transaccsion al conjunto de operaciones que se ejecutan de manera atomica que es que todas las operaciones se ejecutan o ninguna
-- Iniciar la transacci�n
BEGIN TRANSACTION;

-- Retirar 100 unidades de la cuenta 1
UPDATE cuentas SET saldo = saldo - 100 WHERE id = 1;

-- A�adir 100 unidades a la cuenta 2
UPDATE cuentas SET saldo = saldo + 100 WHERE id = 2;

-- Confirmar la transacci�n
COMMIT TRANSACTION;

-- Deshacer la transacci�n--

-- Iniciar la transacci�n
BEGIN TRANSACTION;

-- Retirar 100 unidades de la cuenta 1
UPDATE cuentas SET saldo = saldo - 100 WHERE id = 1;

-- Simular un error (por ejemplo, insertar un valor incorrecto)
INSERT INTO cuentas (id, saldo) VALUES ('abc', 0);

-- Deshacer la transacci�n debido al error
ROLLBACK TRANSACTION;
