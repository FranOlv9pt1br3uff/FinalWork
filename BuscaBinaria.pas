program project1;

type = array[1..50] of integer; //Cria o vetor de 50 posiçoes

var A: vetor;
    k: integer;


procedure OBTER_DADOS( var X: vetor);
var i : integer;
begin
  randomize;
  for i := 1 to 50 do
     X[i] := random(100); //Preenche o vetor aleatóriamente
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

procedure BuscaBinaria (Vetor: array of integer;  x: integer);  //Só funciona se o vetor estiver ordenado
      var inicio, fim: integer;
          meio: integer;
 begin
      readln (x);
      inicio := 1;
      fim:= 50;
      meio := ( inicio+ fim) div 2;
      while (vetor[meio] <> x and  inicio <= fim) do  //Comparacao é sempre pelo meio;  
             begin
                  If (vetor[meio]< x) then //se for o valor for menor que o meio: ~''o meio se torna o novo fim''
                     fim:= meio -1;
                  Else
                      inicio:= meio+1;  //"senao o meio se torna o novo inicio"
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
