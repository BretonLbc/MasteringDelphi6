unit BordersF;

interface

uses
  SysUtils, Qt, Classes, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls, QExtCtrls;

type
  TForm1 = class(TForm)
    BtnNewForm: TButton;
    BorderRadioGroup: TRadioGroup;
    procedure BtnNewFormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

uses
  Second;

procedure TForm1.BtnNewFormClick(Sender: TObject);
var
  NewForm: TForm2;
begin
  NewForm := TForm2.Create (Application);
  NewForm.BorderStyle := TFormBorderStyle (
    BorderRadioGroup.ItemIndex);
  NewForm.Caption := BorderRadioGroup.Items[
    BorderRadioGroup.ItemIndex];
  NewForm.Show;
end;

end.
