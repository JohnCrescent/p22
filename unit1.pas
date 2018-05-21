unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
 var krcma,doma,cesta,i:integer;
begin
  memo1.clear;
  randomize;
  krcma:=0;
  doma:=0;
  for i:=1 to 365 do
  begin
    cesta:=80;
    repeat
      if random(2)=1 then  cesta:=cesta+10
                     else  cesta:=cesta-10 ;
    until (cesta=0) or (cesta=100);
    if cesta=0 then inc(doma)
               else inc(krcma);
  end;
  memo1.lines.add('Doma ostal '+intTOstr(doma)+'-krát.');
  memo1.lines.add('Do krčmy išiel '+intTOstr(krcma)+'-krát.');

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   memo1.clear;
end;

end.

