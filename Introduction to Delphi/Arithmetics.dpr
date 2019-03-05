program Arithmetics;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var FirstNumber, SecondNumber : Integer;
    SumResult, SubResult, MulResult : Integer;
    DivResult, AvgResult : Currency;
begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    Write('Please insert the first number: ');
    Readln(FirstNumber);
    Write('Please insert the second number: ');
    Readln(SecondNumber);
    SumResult := FirstNumber+SecondNumber;
    SubResult := FirstNumber-SecondNumber;
    MulResult := FirstNumber*SecondNumber;
    if SecondNumber > 0 then
      DivResult := FirstNumber/SecondNumber
    else
      DivResult := 0;
    AvgResult := SumResult / 2;
    Writeln( 'Sum: ',SumResult,' Sub: ',SubResult,' Mul: ',MulResult,' Div: ',CurrToStr(DivResult),' Avg: ',CurrToStr(AvgResult) );
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  Write('Press enter to terminate the program...');
  Readln;
end.
