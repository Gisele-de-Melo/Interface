//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

unit Unit1;

interface

uses
  Vcl.Forms, Vcl.Controls, Vcl.StdCtrls, System.SysUtils, System.Classes;

type
  //Interface ICalculadora
  ICalculadora = interface
    ['{D3E9D48C-52FE-4C82-9F1C-3D7F3CDBD8B1}']//Assinatura da classe, para gerar essa linha basta apertar as teclas Shift + Ctrl + G
    function Somar(a, b: Integer): Integer;    //Declaração do método Somar
    function Subtrair(a, b: Integer): Integer; //Declaração do método Subtrair
    function Multiplicar(a, b: Integer): Integer; //Declaração do método Multiplicar
    function Dividir(a, b: Integer): Double; //Declaração do método Dividir
  end;

  //Classe TCalculadora que implementa a interface ICalculadora
  TCalculadora = class(TInterfacedObject, ICalculadora)
  public
    function Somar(a, b: Integer): Integer; //Implementação do método Somar
    function Subtrair(a, b: Integer): Integer; //Implementação do método Subtrair
    function Multiplicar(a, b: Integer): Integer; //Implementação do método Multiplicar
    function Dividir(a, b: Integer): Double; //Implementação do método Dividir
  end;

  //Classe do formulário
  TForm1 = class(TForm)
    EditNum1: TEdit;
    EditNum2: TEdit;
    BtnSomar: TButton;
    BtnSubtrair: TButton;
    BtnMultiplicar: TButton;
    BtnDividir: TButton;
    LabelResultado: TLabel;
    procedure BtnSomarClick(Sender: TObject);
    procedure BtnSubtrairClick(Sender: TObject);
    procedure BtnMultiplicarClick(Sender: TObject);
    procedure BtnDividirClick(Sender: TObject);
  private
    Calculadora: ICalculadora;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TCalculadora }

function TCalculadora.Somar(a, b: Integer): Integer;
begin
  Result := a + b;
end;

function TCalculadora.Subtrair(a, b: Integer): Integer;
begin
  Result := a - b;
end;

function TCalculadora.Multiplicar(a, b: Integer): Integer;
begin
  Result := a * b;
end;

function TCalculadora.Dividir(a, b: Integer): Double;
begin
  if b = 0 then
    raise Exception.Create('Divisão por zero não é permitida');
  Result := a / b;
end;

{ TForm1 }

constructor TForm1.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Calculadora := TCalculadora.Create;
end;

procedure TForm1.BtnSomarClick(Sender: TObject);
var
  Num1, Num2: Integer;
begin
  Num1 := StrToInt(EditNum1.Text);
  Num2 := StrToInt(EditNum2.Text);
  LabelResultado.Caption := 'Resultado: ' + IntToStr(Calculadora.Somar(Num1, Num2));
end;

procedure TForm1.BtnSubtrairClick(Sender: TObject);
var
  Num1, Num2: Integer;
begin
  Num1 := StrToInt(EditNum1.Text);
  Num2 := StrToInt(EditNum2.Text);
  LabelResultado.Caption := 'Resultado: ' + IntToStr(Calculadora.Subtrair(Num1, Num2));
end;

procedure TForm1.BtnMultiplicarClick(Sender: TObject);
var
  Num1, Num2: Integer;
begin
  Num1 := StrToInt(EditNum1.Text);
  Num2 := StrToInt(EditNum2.Text);
  LabelResultado.Caption := 'Resultado: ' + IntToStr(Calculadora.Multiplicar(Num1, Num2));
end;

procedure TForm1.BtnDividirClick(Sender: TObject);
var
  Num1, Num2: Integer;
begin
  Num1 := StrToInt(EditNum1.Text);
  Num2 := StrToInt(EditNum2.Text);
  LabelResultado.Caption := 'Resultado: ' + FloatToStr(Calculadora.Dividir(Num1, Num2));
end;

end.

