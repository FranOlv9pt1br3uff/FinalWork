program project1;

type = array[1..50] of integer;

var A: vetor;
    k: integer;


procedure OBTER_DADOS( var X: vetor);
var i : integer;
begin
  randomize;
  for i := 1 to 50 do
     X[i] := random(100);
end;

procedure IMPRIMIR_VETOR_LINHA( var X: vetor);
var i : integer;
begin
  writeln('Escrevendo vetor em uma linha');
  for i := 1 to 50 do
     write( X[i] , '  ');
  writeln;
end;


procedure ORDENAR(var x: vetor);
var aux, i, limite : integer;
begin
 for limite:= 5 downto 2 do
for i:= 1 to limite-1 do
   if a[i] > a[i+1] then
   begin
     aux:= a[i];
     a[i]:= a[i+1];
     a[i+1]:= aux
   end;
end;

procedure BuscaBinaria (Vetor: array of integer;  x: integer);
      var inicio, fim: integer;
          meio: integer;
 begin
      readln (x);
      inicio := 1;
      fim:= 50;
      meio := ( inicio+ fim) div 2;
      while (vetor[meio] <> x and  inicio <= fim) do
             begin
                  If (vetor[meio]< x) then
                     fim:= meio -1;
                  Else
                      inicio:= meio+1;
                      meio:= (inicio+fim) div 2;
             end;
             begin
                  If (vetor[meio] = x) then
                     writeln ('achou posição = ', meio);
                  Else
                      writeln('nao tem');
             end;
             end;
  end;

begin
  OBTER_DADOS(A);
  IMPRIMIR_VETOR_LINHA(A);
  ORDENAR(A);
  IMPRIMIR_VETOR_LINHA(A);
  readln;
  BuscaBinaria (k) ;
  readln(k);

end.
