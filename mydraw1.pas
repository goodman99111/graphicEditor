unit MyDraw1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TFrmMyDraw }

  TFrmMyDraw = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure MyMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MyMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private

  public

  end;

var
  FrmMyDraw: TFrmMyDraw;

implementation
              var BDrawOn: Boolean;

{$R *.lfm}

{ TFrmMyDraw }

procedure TFrmMyDraw.FormCreate(Sender: TObject);
begin
     BDrawOn:= false;
end;

procedure TFrmMyDraw.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     if BDrawOn then Canvas.LineTo(X,Y);

end;

procedure TFrmMyDraw.MyMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     BDrawOn:= true;
     Canvas.MoveTo(X,Y);
end;

procedure TFrmMyDraw.MyMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     BDrawOn:= false;
end;



end.

