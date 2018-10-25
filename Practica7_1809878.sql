INSERT INTO Cajeros (Id_Cajero, Num_Caja)
VALUES ('123', '011')
GO





create function divide(dividendo int,divisor int) returns int
begin
    declare aux int;
    declare contador int;
    declare resto int;
    set contador = 0;
    set aux = 0;
    while (aux + divisor) <= dividendo do
        set aux = aux + divisor ;
        set contador = contador + 1;
    end while;
    set resto = dividendo - aux ;
return contador;
end;