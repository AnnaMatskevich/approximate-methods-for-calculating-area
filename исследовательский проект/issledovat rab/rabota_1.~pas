unit rabota_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Image1: TImage;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormResize(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cp, p:integer;
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
var
y, yy, ny, nyy, x, s, h, ss, s1, ss1:real;
st:string;
cepx, cepy, i:integer;
begin
if width<height then
cp:=width div 15 +p
else
cp:=height div 15 +p;
p:=0;
end;

procedure TForm1.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if cp-3>8 then
cp:=cp-2;
Image1Click(Sender);
end;

procedure TForm1.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
cp:=cp+2;
Image1Click(Sender);
end;

procedure TForm1.FormResize(Sender: TObject);
begin
if image1.Picture.Graphic <> nil then begin
image1.Picture.Graphic.Width := form1.clientwidth;
image1.Picture.Graphic.Height := form1.clientheight;
end;
Image1Click(Sender);
end;

procedure TForm1.Image1Click(Sender: TObject);
var
c, i, cepx, cepy, ff, r: integer;
x, y:real;
begin
with Image1.Canvas do begin
Pen.Color:=clWhite;
Rectangle(0, 0, width, Height);
Pen.Color:=clblack;
MoveTo(width div 80, height div 2);
LineTo(width-(width div 25), Height div 2);
MoveTo(width-(width div 25), Height div 2);
LineTo(width-(width div 25) - Width div 40, Height div 2-height div 90);
MoveTo(width-(width div 25), Height div 2);
LineTo(width-(width div 25) - Width div 40, Height div 2+height div 90);
MoveTo(width div 2, height div 80);
LineTo(width div 2, height-50);
MoveTo(width div 2, 10);
LineTo(Width div 2-width div 170, 10 + Height div 20);
MoveTo(width div 2, 10);
LineTo(Width div 2+width div 170, 10 + Height div 20);
Font.Size:=round(cp / 3.5);
TextOut(Width div 2-width div 30, 10 + Height div 100, 'Y');
TextOut(Width div 2-width div 60, Height div 2+height div 150,'0');
TextOut(Width - 10-width div 40, Height div 2+height div 60, 'X');
c:=Width div 2+cp;
r:=cp div 3;
for i:=1 to ((Width div 2- width div 16) div cp) do begin
pen.color:=clsilver;
MoveTo(c, height div 80);
LineTo(c, height-50);
pen.Color:=clblack;
MoveTo(c, Height div 2-r);
LineTo(c, Height div 2+r);
c:=c+cp;
end;
c:=Width div 2-cp;
for i:=-1 downto -((Width div 2- width div 16) div cp) do begin
pen.color:=clsilver;
MoveTo(c, height div 80);
LineTo(c, height-50);
pen.Color:=clblack;
MoveTo(c, Height div 2-r);
LineTo(c, Height div 2+r);
c:=c-cp;
end;
c:=height div 2+cp;
for i:=-1 downto -((Height div 2 - 50) div cp) do begin
pen.color:=clsilver;
MoveTo(width div 80, c);
LineTo(width-(width div 25), c);
pen.Color:=clblack;
MoveTo(Width div 2+r, c);
LineTo(Width div 2-r, c);
c:=c+cp;
end;
c:=height div 2-cp;
for i:=1 to ((Height div 2 - height div 20 -10) div cp)-1 do begin
pen.color:=clsilver;
MoveTo(width div 80, c);
LineTo(width-(width div 25), c);
pen.Color:=clblack;
MoveTo(Width div 2+r, c);
LineTo(Width div 2-r, c);
c:=c-cp;
end;
c:=Width div 2-cp;
for i:=-1 downto -((Width div 2- width div 16) div cp) do
begin
TextOut(c-width div 100, Height div 2 + r+1, IntToStr(i));
c:=c-cp;
end;
c:=Width div 2+cp;
for i:=1 to ((Width div 2- width div 16) div cp) do
begin
TextOut(c-width div 200, Height div 2 + r+1, IntToStr(i));
c:=c+cp;
end;
c:=height div 2-cp;
for i:=1 to (Height div 2 - 50) div cp do
begin
TextOut(Width div 2-2*font.size, c-height div 150, IntToStr(i));
c:=c-cp;
end;
c:=height div 2+cp;
for i:=-1 downto -((Height div 2 - height div 20 -10) div cp) do
begin
TextOut(Width div 2-2*font.size-2, c-height div 150, IntToStr(i));
c:=c+cp;
end;

TextOut(Width div 2-width div 30, 10 + Height div 100, 'Y');// Y
TextOut(Width div 2-width div 60, Height div 2+height div 150,'0'); // 0
TextOut(Width - 10-width div 40, Height div 2+height div 60, 'X'); // ?

cepx:=width div 2;
cepy:=height div 2;

if combobox2.text='1й пример' then begin
x:=-1;
While x<=14 do
begin
if x<=5 then
  begin
  y:=3+1.5*x;
  pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
  end;
if x<=8 then
  begin
  y:=sqrt(-x+8);
  pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
  end;
if (x>=4) and (x<=8) then
  begin
  y:=(x-6)*(x-6)+6;
  pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
  end;
if (x>=3) and (x<=14) then
  begin
  y:=12.5-0.5*x;
  pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
  end;
if (x>5) and (x<=14) then
  begin
  y:=-2+sqrt(64-(x-13)*(x-13));
  pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
  end;

x:=x+(0.05/cp);
end;
textout(round(cepx+cp*0.4), cepy-8*cp, 'y=3+1.5x');
textout(round(cepx+cp*0.5), round(cepy-1.5*cp), 'y=sqrt(8-x)');
textout(cepx+cp*9, cepy-10*cp, 'y=(x-6)**2+6');
textout(cepx+cp*11, cepy-8*cp, 'y=12.5-0.5x');
textout(cepx+cp*9, cepy-3*cp, '(x-13)**2+(y+2)**2=64');
end
else if combobox2.text='окружность' then
  begin
  x:=0;
  while x<=8 do
    begin
    y:=5+sqrt(16-(x-4)*(x-4));
    pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
    y:=5-sqrt(16-(x-4)*(x-4));
    pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
    x:=x+(0.05/cp);
    end;
  textout(cepx+cp*8, cepy-2*cp, '(x-4)**2+(y-5)**2=16');
  end
else if combobox2.text='прямолинейная фигура' then
  begin
  x:=0;
  while x<12 do
    begin
    if x>=9 then
      begin
      y:=55-5*x;
      pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
      end;
    if x<=3 then
      begin
      y:=3*x;
      pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
      end;
    y:=6+(x/4);
    pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
    y:=4-(x/3);
    pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
    x:=x+(0.05/cp);
    end;
  textout(cepx+cp*1, cepy-2*cp, 'y=4-x/3');
  textout(round(cepx+cp*0.7), cepy-8*cp, 'y=3x');
  textout(cepx+cp*11, cepy-8*cp, 'y=6-x/4');
  textout(cepx+cp*11, cepy-4*cp, 'y==55-5x');
  end
else
  begin
  x:=2;
  while x<=8 do
    begin
    y:=5+x/3;
    pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
    y:=(x-5)*(x-5)+1;
    pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
    x:=x+(0.05/cp);
    end;
  textout(cepx+cp*3, cepy-9*cp, 'y=(x-5)**2+1');
  textout(cepx+cp*8, cepy-7*cp, 'y=5-x/3');
  end;
end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
form1.ActiveControl := nil;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
form1.ActiveControl := nil;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
h, x, s, ss, y, ny, yy, nyy, c, xx:real;
st:string;
cepx, cepy, i, j, dx, dy:integer;
begin
Image1Click(Sender);
if combobox1.text='метод правых прямоугольников' then
  begin
  if combobox2.text='окружность' then
    begin
    h:=8/strtoint(edit1.text);
    x:=8;
    s:=0;
    y:=5;
    yy:=5;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x>=h-(h/500) do
    begin
    y:=5+sqrt(16-(x-4)*(x-4));
    yy:=5-sqrt(16-(x-4)*(x-4));
    s:=s+(y-yy)*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x-h)*cp), round(cepy-yy*cp)), point(round(cepx+(x-h)*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-cp*yy)), point(round(cepx+(x-h)*cp),round(cepy-yy*cp))]);
    x:=x-h;
    end;
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(50.2654824574-s);
    end
  else if combobox2.text='прямолинейная фигура' then
    begin
    h:=(681/70)/strtoint(edit1.text);
    x:=(153/14);
    s:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x>=6/5+h-(h/100) do
    begin
    if x<(24/11) then
      y:=3*x
    else if x<28/3 then
      y:=6+x/4
    else
      y:=55-5*x;
    yy:=4-x/3;
    s:=s+(y-yy)*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x-h)*cp), round(cepy-yy*cp)), point(round(cepx+(x-h)*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-cp*yy)), point(round(cepx+(x-h)*cp),round(cepy-yy*cp))]);
    x:=x-h;
    end;
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(45.866454276-s);
    end
  else if combobox2.text='пораболла+прямая' then
    begin
    h:=4.77261/strtoint(edit1.text);
    x:=7.55297;
    s:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x>=2.78036+h-(h/100) do
    begin
    y:=5+x/3;
    yy:=(x-5)*(x-5)+1;
    s:=s+(y-yy)*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x-h)*cp), round(cepy-yy*cp)), point(round(cepx+(x-h)*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-cp*yy)), point(round(cepx+(x-h)*cp),round(cepy-yy*cp))]);
    x:=x-h;
    end;
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(18.118230000000004-s);
    end
  else
    begin
    h:=(13.102357)/strtoint(edit1.text);
    x:=13;
    s:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x>=-0.102357+h-(h/100) do
    begin
    if x<4.18826 then
      y:=3+1.5*x
    else if x<7.63746 then
      y:=(x-6)*(x-6)+6
    else
      y:=12.5-0.5*x;
    if x<5.7983856 then
      yy:=sqrt(8-x)
    else
      yy:=-2+sqrt(64-(x-13)*(x-13));
    s:=s+(y-yy)*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x-h)*cp), round(cepy-yy*cp)), point(round(cepx+(x-h)*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-cp*yy)), point(round(cepx+(x-h)*cp),round(cepy-yy*cp))]);
    x:=x-h;
    end;
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(42.339349999999996-s);
    end;
  end

else if combobox1.text='метод средних прямоугольников' then
  begin
  if combobox2.text='окружность' then
    begin
    h:=8/strtoint(edit1.text);
    x:=h;
    s:=0;
    y:=5;
    yy:=5;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x<=8 do
    begin
    y:=5+sqrt(16-(x-4)*(x-4));
    yy:=5-sqrt(16-(x-4)*(x-4));
    s:=s+(y-yy)*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x-h)*cp), round(cepy-yy*cp)), point(round(cepx+(x-h)*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-cp*yy)), point(round(cepx+(x-h)*cp),round(cepy-yy*cp))]);
    x:=x+h;
    end;


    h:=8/strtoint(edit1.text);
    x:=0;
    ss:=0;
    y:=5;
    yy:=5;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x<=8-h+(h/100) do
    begin
    y:=5+sqrt(16-(x-4)*(x-4));
    yy:=5-sqrt(16-(x-4)*(x-4));
    ss:=ss+(y-yy)*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x+h)*cp), round(cepy-yy*cp)), point(round(cepx+(x+h)*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-cp*yy)), point(round(cepx+(x+h)*cp),round(cepy-yy*cp))]);
    x:=x+h;
    end;
    label2.caption:=floattostr((s+ss)/2);
    label5.caption:=floattostr(50.2654824574-(s+ss)/2);
    end
  else if combobox2.text='прямолинейная фигура' then
    begin
    h:=(681/70)/strtoint(edit1.text);
    x:=6/5+h;
    s:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x<=(153/14) do
    begin
    if x<(24/11) then
      y:=3*x
    else if x<28/3 then
      y:=6+x/4
    else
      y:=55-5*x;
    yy:=4-x/3;
    s:=s+(y-yy)*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x-h)*cp), round(cepy-yy*cp)), point(round(cepx+(x-h)*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-cp*yy)), point(round(cepx+(x-h)*cp),round(cepy-yy*cp))]);
    x:=x+h;
    end;

    h:=(681/70)/strtoint(edit1.text);
    x:=6/5;
    ss:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x<=(153/14)-h+(h/100) do
    begin
    if x<(24/11) then
      y:=3*x
    else if x<28/3 then
      y:=6+x/4
    else
      y:=55-5*x;
    yy:=4-x/3;
    ss:=ss+(y-yy)*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x+h)*cp), round(cepy-yy*cp)), point(round(cepx+(x+h)*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-cp*yy)), point(round(cepx+(x+h)*cp),round(cepy-yy*cp))]);
    x:=x+h;
    end;
    label2.caption:=floattostr((s+ss)/2);
    label5.caption:=floattostr(45.866454276-(s+ss)/2);
    end
  else if combobox2.text='пораболла+прямая' then
    begin
    h:=4.77261/strtoint(edit1.text);
    x:=2.78036+h;
    s:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x<=7.55297 do
    begin
    y:=5+x/3;
    yy:=(x-5)*(x-5)+1;
    s:=s+(y-yy)*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x-h)*cp), round(cepy-yy*cp)), point(round(cepx+(x-h)*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-cp*yy)), point(round(cepx+(x-h)*cp),round(cepy-yy*cp))]);
    x:=x+h;
    end;

    h:=4.77261/strtoint(edit1.text);
    x:=2.78036;
    ss:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x<=7.55297-h+(h/100) do
    begin
    y:=5+x/3;
    yy:=(x-5)*(x-5)+1;
    ss:=ss+(y-yy)*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x+h)*cp), round(cepy-yy*cp)), point(round(cepx+(x+h)*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-cp*yy)), point(round(cepx+(x+h)*cp),round(cepy-yy*cp))]);
    x:=x+h;
    end;
    label2.caption:=floattostr((s+ss)/2);
    label5.caption:=floattostr(18.118230000000004-(s+ss)/2);
    end
  else
    begin
    h:=(13.102357)/strtoint(edit1.text);
    x:=-0.102357+h;
    s:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x<=13 do
    begin
    if x<4.18826 then
      y:=3+1.5*x
    else if x<7.63746 then
      y:=(x-6)*(x-6)+6
    else
      y:=12.5-0.5*x;
    if x<5.7983856 then
      yy:=sqrt(8-x)
    else
      yy:=-2+sqrt(64-(x-13)*(x-13));
    s:=s+(y-yy)*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x-h)*cp), round(cepy-yy*cp)), point(round(cepx+(x-h)*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-cp*yy)), point(round(cepx+(x-h)*cp),round(cepy-yy*cp))]);
    x:=x+h;
    end;

    x:=-0.102357;
    ss:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x<=13-h+(h/100) do
    begin
    if x<4.18826 then
      y:=3+1.5*x
    else if x<7.63746 then
      y:=(x-6)*(x-6)+6
    else
      y:=12.5-0.5*x;
    if x<5.7983856 then
      yy:=sqrt(8-x)
    else
      yy:=-2+sqrt(64-(x-13)*(x-13));
    ss:=ss+(y-yy)*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x+h)*cp), round(cepy-yy*cp)), point(round(cepx+(x+h)*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-cp*yy)), point(round(cepx+(x+h)*cp),round(cepy-yy*cp))]);
    x:=x+h;
    end;
    label2.caption:=floattostr((s+ss)/2);
    label5.caption:=floattostr(42.339349999999996-(s+ss)/2);
    end;
  end

else if combobox1.text='метод левых прямоугольников' then
  begin

  if combobox2.text='окружность' then
    begin
    h:=8/strtoint(edit1.text);
    x:=0;
    s:=0;
    y:=5;
    yy:=5;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x<=8-h+(h/100) do
    begin
    y:=5+sqrt(16-(x-4)*(x-4));
    yy:=5-sqrt(16-(x-4)*(x-4));
    s:=s+(y-yy)*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x+h)*cp), round(cepy-yy*cp)), point(round(cepx+(x+h)*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-cp*yy)), point(round(cepx+(x+h)*cp),round(cepy-yy*cp))]);
    x:=x+h;
    end;
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(50.2654824574-s);
    end
  else if combobox2.text='прямолинейная фигура' then
    begin
    h:=(681/70)/strtoint(edit1.text);
    x:=6/5;
    s:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x<=(153/14)-h+(h/100) do
    begin
    if x<(24/11) then
      y:=3*x
    else if x<28/3 then
      y:=6+x/4
    else
      y:=55-5*x;
    yy:=4-x/3;
    s:=s+(y-yy)*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x+h)*cp), round(cepy-yy*cp)), point(round(cepx+(x+h)*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-cp*yy)), point(round(cepx+(x+h)*cp),round(cepy-yy*cp))]);
    x:=x+h;
    end;
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(45.866454276-s);
    end
  else if combobox2.text='пораболла+прямая' then
    begin
    h:=4.77261/strtoint(edit1.text);
    x:=2.78036;
    s:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x<=7.55297-h+(h/100) do
    begin
    y:=5+x/3;
    yy:=(x-5)*(x-5)+1;
    s:=s+(y-yy)*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x+h)*cp), round(cepy-yy*cp)), point(round(cepx+(x+h)*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-cp*yy)), point(round(cepx+(x+h)*cp),round(cepy-yy*cp))]);
    x:=x+h;
    end;
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(18.118230000000004-s);
    end
  else
    begin
    h:=(13.102357)/strtoint(edit1.text);
    x:=-0.102357;
    s:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x<=13-h+(h/100) do
    begin
    if x<4.18826 then
      y:=3+1.5*x
    else if x<7.63746 then
      y:=(x-6)*(x-6)+6
    else
      y:=12.5-0.5*x;
    if x<5.7983856 then
      yy:=sqrt(8-x)
    else
      yy:=-2+sqrt(64-(x-13)*(x-13));
    s:=s+(y-yy)*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x+h)*cp), round(cepy-yy*cp)), point(round(cepx+(x+h)*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-y*cp)), point(round(cepx+x*cp),round(cepy-cp*yy)), point(round(cepx+(x+h)*cp),round(cepy-yy*cp))]);
    x:=x+h;
    end;
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(42.339349999999996-s);
    end;
  end
else if combobox1.text='метод трапеций' then
  begin

  if combobox2.text='окружность' then
    begin
    h:=8/strtoint(edit1.text);
    x:=0;
    s:=0;
    y:=5+sqrt(16-(x-4)*(x-4));
    yy:=5-sqrt(16-(x-4)*(x-4));
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x<=8-h-h+(h/100) do
    begin
    ny:=5+sqrt(16-(x+h-4)*(x+h-4));
    nyy:=5-sqrt(16-(x+h-4)*(x+h-4));
    s:=s+((y-yy)+(ny-nyy))/2*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x)*cp), round(cepy-yy*cp)), point(round(cepx+(x)*cp),round(cepy-y*cp)), point(round(cepx+(x+h)*cp),round(cepy-ny*cp)), point(round(cepx+(x+h)*cp),round(cepy-cp*nyy)), point(round(cepx+(x)*cp),round(cepy-yy*cp))]);
    x:=x+h;
    y:=ny;
    yy:=nyy;
    end;
    ny:=5+sqrt(16-(8-4)*(8-4));
    nyy:=5-sqrt(16-(8-4)*(8-4));
    s:=s+((y-yy)+(ny-nyy))/2*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x)*cp), round(cepy-yy*cp)), point(round(cepx+(x)*cp),round(cepy-y*cp)), point(round(cepx+(x+h)*cp),round(cepy-ny*cp)), point(round(cepx+(x+h)*cp),round(cepy-cp*nyy)), point(round(cepx+(x)*cp),round(cepy-yy*cp))]);
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(50.2654824574-s);
    end
  else if combobox2.text='прямолинейная фигура' then
    begin
    h:=(681/70)/strtoint(edit1.text);
    x:=6/5;
    s:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    if x<(24/11) then
      y:=3*x
    else if x<28/3 then
      y:=6+x/4
    else
      y:=55-5*x;
    yy:=4-x/3;
    while x<=(153/14)-h+(h/100)-h do
    begin
    if (x+h)<(24/11) then
      ny:=3*(x+h)
    else if (x+h)<28/3 then
      ny:=6+(x+h)/4
    else
      ny:=55-5*(x+h);
    nyy:=4-(x+h)/3;
    s:=s+((y-yy)+(ny-nyy))/2*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x)*cp), round(cepy-yy*cp)), point(round(cepx+(x)*cp),round(cepy-y*cp)), point(round(cepx+(x+h)*cp),round(cepy-ny*cp)), point(round(cepx+(x+h)*cp),round(cepy-cp*nyy)), point(round(cepx+(x)*cp),round(cepy-yy*cp))]);
    x:=x+h;
    y:=ny;
    yy:=nyy;
    end;
    ny:=55-5*(153/14);
    nyy:=4-(153/14)/3;
    s:=s+((y-yy)+(ny-nyy))/2*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x)*cp), round(cepy-yy*cp)), point(round(cepx+(x)*cp),round(cepy-y*cp)), point(round(cepx+(x+h)*cp),round(cepy-ny*cp)), point(round(cepx+(x+h)*cp),round(cepy-cp*nyy)), point(round(cepx+(x)*cp),round(cepy-yy*cp))]);
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(45.866454276-s);
    end
  else if combobox2.text='пораболла+прямая' then
    begin
    h:=4.77261/strtoint(edit1.text);
    x:=2.78036;
    s:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    y:=5+x/3;
    yy:=(x-5)*(x-5)+1;
    while x<=7.55297-h+(h/100)-h do
    begin
    ny:=5+(x+h)/3;
    nyy:=((x+h)-5)*((x+h)-5)+1;
    s:=s+((y-yy)+(ny-nyy))/2*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x)*cp), round(cepy-yy*cp)), point(round(cepx+(x)*cp),round(cepy-y*cp)), point(round(cepx+(x+h)*cp),round(cepy-ny*cp)), point(round(cepx+(x+h)*cp),round(cepy-cp*nyy)), point(round(cepx+(x)*cp),round(cepy-yy*cp))]);
    x:=x+h;
    y:=ny;
    yy:=nyy;
    end;
    ny:=5+7.55297/3;
    nyy:=(7.55297-5)*(7.55297-5)+1;
    s:=s+((y-yy)+(ny-nyy))/2*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x)*cp), round(cepy-yy*cp)), point(round(cepx+(x)*cp),round(cepy-y*cp)), point(round(cepx+(x+h)*cp),round(cepy-ny*cp)), point(round(cepx+(x+h)*cp),round(cepy-cp*nyy)), point(round(cepx+(x)*cp),round(cepy-yy*cp))]);
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(18.118230000000004-s);
    end
  else
    begin
    h:=(13.102357)/strtoint(edit1.text);
    x:=-0.102357;
    s:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    y:=3+1.5*x;
    yy:=sqrt(8-x);
    while x<=13-h-h+(h/100) do
    begin
    if (x+h)<4.18826 then
      ny:=3+1.5*(x+h)
    else if (x+h)<7.63746 then
      ny:=((x+h)-6)*((x+h)-6)+6
    else
      ny:=12.5-0.5*(x+h);
    if (x+h)<5.7983856 then
      nyy:=sqrt(8-(x+h))
    else
      nyy:=-2+sqrt(64-((x+h)-13)*((x+h)-13));
    s:=s+((y-yy)+(ny-nyy))/2*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x)*cp), round(cepy-yy*cp)), point(round(cepx+(x)*cp),round(cepy-y*cp)), point(round(cepx+(x+h)*cp),round(cepy-ny*cp)), point(round(cepx+(x+h)*cp),round(cepy-cp*nyy)), point(round(cepx+(x)*cp),round(cepy-yy*cp))]);
    x:=x+h;
    y:=ny;
    yy:=nyy;
    end;
    ny:=12.5-0.5*13;
    nyy:=-2+sqrt(64-(13-13)*(13-13));
    s:=s+((y-yy)+(ny-nyy))/2*h;
    image1.Canvas.Pen.Color:=clgreen;
    image1.Canvas.polyline([point(round(cepx+(x)*cp), round(cepy-yy*cp)), point(round(cepx+(x)*cp),round(cepy-y*cp)), point(round(cepx+(x+h)*cp),round(cepy-ny*cp)), point(round(cepx+(x+h)*cp),round(cepy-cp*nyy)), point(round(cepx+(x)*cp),round(cepy-yy*cp))]);
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(42.339349999999996-s);
    end;
  end
else if combobox1.text='метод Монте-Карло' then
  begin
  yy:=0;
  cepx:=form1.width div 2;
  cepy:=form1.height div 2;
  if combobox2.text='окружность' then
    begin
    image1.Canvas.brush.style:=bsclear;
    image1.Canvas.rectangle(cepx-cp, cepy-10*cp, cepx+cp*9,cepy);
    image1.Canvas.brush.style:=bssolid;
    for i:=0 to strtoint(edit1.text) do
      begin
      x:=Random(10000000)/1000000-1;
      y:=Random(10000000)/1000000;
      if (x>=0) and (x<=8) and ((5+sqrt(16-(x-4)*(x-4)))>=y) and ((5-sqrt(16-(x-4)*(x-4))<=y)) then
        begin
        yy:=yy+1;
        image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
        end
      else
        image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
      end;
    s:=100*yy/strtoint(edit1.text);
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(50.2654824574-s);
    end
  else if combobox2.text='прямолинейная фигура' then
    begin
    yy:=0;
    image1.Canvas.brush.style:=bsclear;
    image1.Canvas.rectangle(cepx+cp, cepy, cepx+cp*11,cepy-cp*9);
    image1.Canvas.brush.style:=bssolid;
    for i:=0 to strtoint(edit1.text) do
      begin
      x:=Random(10000000)/1000000+1;
      y:=Random(9000000)/1000000;
      if (x>=6/5) and (x<=24/11) and (3*x>=y) and (4-x/3<=y)then
        begin
        yy:=yy+1;
        image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
        end
      else if (x>=24/11) and (x<=28/3) and (6+x/4>=y) and (4-x/3<=y) then
        begin
        yy:=yy+1;
        image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
        end
      else if (x>=28/3) and (x<=153/14) and (55-5*x>=y) and (4-x/3<=y) then
        begin
        yy:=yy+1;
        image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
        end
      else image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
      s:=90*yy/strtoint(edit1.text);
      label2.caption:=floattostr(s);
      label5.caption:=floattostr(45.866454276-s);
      end;
    end
  else if combobox2.text='пораболла+прямая' then
    begin
    yy:=0;
    image1.Canvas.brush.style:=bsclear;
    image1.Canvas.rectangle(cepx+2*cp, cepy, cepx+cp*8,cepy-cp*8);
    image1.Canvas.brush.style:=bssolid;
    for i:=0 to strtoint(edit1.text) do
      begin
      x:=Random(6000000)/1000000+2;
      y:=Random(8000000)/1000000;
      if (x>=2.78036) and (x<=7.55297) and ((5+x/3)>=y) and ((x-5)*(x-5)+1<=y) then
        begin
        yy:=yy+1;
        image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
        end
      else
        image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
      end;
    s:=48*yy/strtoint(edit1.text);
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(18.118230000000004-s);
    end
  else
    begin
    image1.Canvas.brush.style:=bsclear;
    image1.Canvas.rectangle(cepx-1*cp, cepy, cepx+cp*14,cepy-cp*10);
    image1.Canvas.brush.style:=bssolid;
    for i:=0 to strtoint(edit1.text) do
    begin
    x:=Random(15000000)/1000000-1;
    y:=Random(10000000)/1000000;
      if (x>=-0.102357) and (x<=4.18826) and (3+1.5*x>=y) and (sqrt(8-x)<=y)then
        begin
        yy:=yy+1;
        image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
        end
      else if (x>=4.18826) and (x<=5.7983856) and ((6-x)*(6-x)+6>=y) and (sqrt(8-x)<=y) then
        begin
        yy:=yy+1;
        image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
        end
      else if (x>=5.7983856) and (x<=7.63746) and ((6-x)*(6-x)+6>=y) and (-2+sqrt(64-(x-13)*(x-13))<=y) then
        begin
        yy:=yy+1;
        image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
        end
      else if (x>=7.63746) and (x<=13) and (12.5-0.5*x>=y) and (-2+sqrt(64-(x-13)*(x-13))<=y) then
        begin
        yy:=yy+1;
        image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
        end
      else image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
      end;
      s:=150*yy/strtoint(edit1.text);
      label2.caption:=floattostr(s);
      label5.caption:=floattostr(42.339349999999996-s);
    end;
  end
else if combobox1.text='метод пораболл' then
  begin
  if combobox2.text='окружность' then
    begin
    h:=8/strtoint(edit1.text);
    x:=0;
    s:=0;
    y:=5+sqrt(16-(x-4)*(x-4));
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    while x<=8-h-h+(h/100) do
    begin
    ny:=5+sqrt(16-(x+h-4)*(x+h-4));
    c:=5+sqrt(16-(x+0.5*h-4)*(x+0.5*h-4));
    s:=s+(y+4*c+ny)/6*h;
      xx:=x-h/2;
      while xx<=x+h+h/2 do
      begin
      yy:=ny*(xx-x)*(xx-x-h/2)/h/h*2+c*(xx-x)*(xx-x-h)/h*2/(-h)*2+y*(xx-x-h/2)*(xx-x-h)/(-h)*2/(-h);
      image1.Canvas.pixels[cepx+trunc(xx*cp), cepy-trunc(yy*cp)]:=clgreen;
      xx:=xx+(0.001);
      end;
    x:=x+h;
    y:=ny;
    end;

    ny:=5+sqrt(16-(8-4)*(8-4));
    c:=5+sqrt(16-(8-0.5*h-4)*(8-0.5*h-4));
    s:=s+(y+4*c+ny)/6*h;
    xx:=x-h/2;
    while xx<=x+h+h/2 do
    begin
    yy:=ny*(xx-x)*(xx-x-h/2)/h/h*2+c*(xx-x)*(xx-x-h)/h*2/(-h)*2+y*(xx-x-h/2)*(xx-x-h)/(-h)*2/(-h);
    image1.Canvas.pixels[cepx+trunc(xx*cp), cepy-trunc(yy*cp)]:=clgreen;
    xx:=xx+(0.001);
    end;
    
    x:=0;
    yy:=5-sqrt(16-(x-4)*(x-4));
    while x<=8-h-h+(h/100) do
    begin
    nyy:=5-sqrt(16-(x+h-4)*(x+h-4));
    c:=5-sqrt(16-(x+0.5*h-4)*(x+0.5*h-4));
    s:=s-(yy+4*c+nyy)/6*h;
      xx:=x-h/2;
      while xx<=x+h+h/2 do
      begin
      y:=nyy*(xx-x)*(xx-x-h/2)/h/h*2+c*(xx-x)*(xx-x-h)/h*2/(-h)*2+yy*(xx-x-h/2)*(xx-x-h)/(-h)*2/(-h);
      image1.Canvas.pixels[cepx+trunc(xx*cp), cepy-trunc(y*cp)]:=clgreen;
      xx:=xx+(0.001);
      end;
    x:=x+h;
    yy:=nyy;
    end;

    nyy:=5+sqrt(16-(8-4)*(8-4));
    c:=5-sqrt(16-(8-0.5*h-4)*(8-0.5*h-4));
    s:=s-(yy+4*c+nyy)/6*h;
      xx:=x-h/2;
      while xx<=x+h+h/2 do
      begin
      y:=nyy*(xx-x)*(xx-x-h/2)/h/h*2+c*(xx-x)*(xx-x-h)/h*2/(-h)*2+yy*(xx-x-h/2)*(xx-x-h)/(-h)*2/(-h);
      image1.Canvas.pixels[cepx+trunc(xx*cp), cepy-trunc(y*cp)]:=clgreen;
      xx:=xx+(0.001);
      end;

    label2.caption:=floattostr(s);
    label5.caption:=floattostr(50.2654824574-s);
    end
  else if combobox2.text='прямолинейная фигура' then
    begin
    h:=(681/70)/strtoint(edit1.text);
    x:=6/5;
    s:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    y:=3*x;
    while x<=(153/14)-h+(h/100)-h do
    begin
    if (x+h)<(24/11) then
      ny:=3*(x+h)
    else if (x+h)<28/3 then
      ny:=6+(x+h)/4
    else
      ny:=55-5*(x+h);

    if (x+h/2)<(24/11) then
      c:=3*(x+h/2)
    else if (x+h/2)<28/3 then
      c:=6+(x+h/2)/4
    else
      c:=55-5*(x+h/2);
    s:=s+(y+4*c+ny)/6*h;
    xx:=x-h/2;
      while xx<=x+h+h/2 do
      begin
      yy:=ny*(xx-x)*(xx-x-h/2)/h/h*2+c*(xx-x)*(xx-x-h)/h*2/(-h)*2+y*(xx-x-h/2)*(xx-x-h)/(-h)*2/(-h);
      image1.Canvas.pixels[cepx+trunc(xx*cp), cepy-trunc(yy*cp)]:=clgreen;
      xx:=xx+(0.001);
      end;
    x:=x+h;
    y:=ny;
    end;

    ny:=55-5*(153/14);
    c:=55-5*(153/14-h/2);
    s:=s+(y+4*c+ny)/6*h;
    xx:=x-h/2;
    while xx<=x+h+h/2 do
    begin
    yy:=ny*(xx-x)*(xx-x-h/2)/h/h*2+c*(xx-x)*(xx-x-h)/h*2/(-h)*2+y*(xx-x-h/2)*(xx-x-h)/(-h)*2/(-h);
    image1.Canvas.pixels[cepx+trunc(xx*cp), cepy-trunc(yy*cp)]:=clgreen;
    xx:=xx+(0.001);
    end;

    x:=6/5;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    yy:=4-x/3;
    while x<=(153/14)-h+(h/100)-h do
    begin
    nyy:=4-(x+h)/3;
    c:=4-(x+h/2)/3;
    s:=s-(yy+4*c+nyy)/6*h;
      xx:=x-h/2;
      while xx<=x+h+h/2 do
      begin
      y:=nyy*(xx-x)*(xx-x-h/2)/h/h*2+c*(xx-x)*(xx-x-h)/h*2/(-h)*2+yy*(xx-x-h/2)*(xx-x-h)/(-h)*2/(-h);
      image1.Canvas.pixels[cepx+trunc(xx*cp), cepy-trunc(y*cp)]:=clgreen;
      xx:=xx+(0.001);
      end;
    x:=x+h;
    yy:=nyy;
    end;
    nyy:=4-(153/14)/3;
    c:=4-(153/14-h/2)/3;
    s:=s-(yy+4*c+nyy)/6*h;
      xx:=x-h/2;
      while xx<=x+h+h/2 do
      begin
      y:=nyy*(xx-x)*(xx-x-h/2)/h/h*2+c*(xx-x)*(xx-x-h)/h*2/(-h)*2+yy*(xx-x-h/2)*(xx-x-h)/(-h)*2/(-h);
      image1.Canvas.pixels[cepx+trunc(xx*cp), cepy-trunc(y*cp)]:=clgreen;
      xx:=xx+(0.001);
      end;
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(45.866454276-s);
    end
  else if combobox2.text='пораболла+прямая' then
    begin
    h:=4.77261/strtoint(edit1.text);
    x:=2.78036;
    s:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    y:=5+x/3;
    while x<=7.55297-h+(h/100)-h do
    begin
    ny:=5+(x+h)/3;
    c:=5+(x+h/2)/3;
    s:=s+(y+4*c+ny)/6*h;
      xx:=x-h/2;
      while xx<=x+h+h/2 do
      begin
      yy:=ny*(xx-x)*(xx-x-h/2)/h/h*2+c*(xx-x)*(xx-x-h)/h*2/(-h)*2+y*(xx-x-h/2)*(xx-x-h)/(-h)*2/(-h);
      image1.Canvas.pixels[cepx+trunc(xx*cp), cepy-trunc(yy*cp)]:=clgreen;
      xx:=xx+(0.001);
      end;
    x:=x+h;
    y:=ny;
    end;
    ny:=5+7.55297/3;
    c:=5+(7.55297-h/2)/3;
    s:=s+(y+4*c+ny)/6*h;
    xx:=x-h/2;
    while xx<=x+h+h/2 do
    begin
    yy:=ny*(xx-x)*(xx-x-h/2)/h/h*2+c*(xx-x)*(xx-x-h)/h*2/(-h)*2+y*(xx-x-h/2)*(xx-x-h)/(-h)*2/(-h);
    image1.Canvas.pixels[cepx+trunc(xx*cp), cepy-trunc(yy*cp)]:=clgreen;
    xx:=xx+(0.001);
    end;

    x:=2.78036;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    yy:=(x-5)*(x-5)+1;
    while x<=7.55297-h+(h/100)-h do
    begin
    nyy:=((x+h)-5)*((x+h)-5)+1;
    c:=((x+h/2)-5)*((x+h/2)-5)+1;
    s:=s-(yy+4*c+nyy)/6*h;
      xx:=x-h/2;
      while xx<=x+h+h/2 do
      begin
      y:=nyy*(xx-x)*(xx-x-h/2)/h/h*2+c*(xx-x)*(xx-x-h)/h*2/(-h)*2+yy*(xx-x-h/2)*(xx-x-h)/(-h)*2/(-h);
      image1.Canvas.pixels[cepx+trunc(xx*cp), cepy-trunc(y*cp)]:=clgreen;
      xx:=xx+(0.001);
      end;
    x:=x+h;
    yy:=nyy;
    end;
    nyy:=(7.55297-5)*(7.55297-5)+1;
    c:=(7.55297-h/2-5)*(7.55297-h/2-5)+1;
    s:=s-(yy+4*c+nyy)/6*h;
      xx:=x-h/2;
      while xx<=x+h+h/2 do
      begin
      y:=nyy*(xx-x)*(xx-x-h/2)/h/h*2+c*(xx-x)*(xx-x-h)/h*2/(-h)*2+yy*(xx-x-h/2)*(xx-x-h)/(-h)*2/(-h);
      image1.Canvas.pixels[cepx+trunc(xx*cp), cepy-trunc(y*cp)]:=clgreen;
      xx:=xx+(0.001);
      end;
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(18.118230000000004-s);
    end
  else
    begin
    h:=(13.102357)/strtoint(edit1.text);
    x:=-0.102357;
    s:=0;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    y:=3+1.5*x;
    while x<=13-h+(h/100)-h do
    begin
    if (x+h/2)<4.18826 then
      c:=3+1.5*(x+h/2)
    else if (x+h/2)<7.63746 then
      c:=((x+h/2)-6)*((x+h/2)-6)+6
    else
      c:=12.5-0.5*(x+h/2);
    if (x+h)<4.18826 then
      ny:=3+1.5*(x+h)
    else if (x+h)<7.63746 then
      ny:=((x+h)-6)*((x+h)-6)+6
    else
      ny:=12.5-0.5*(x+h);
    s:=s+(y+4*c+ny)/6*h;
    xx:=x-h/2;
      while xx<=x+h+h/2 do
      begin
      yy:=ny*(xx-x)*(xx-x-h/2)/h/h*2+c*(xx-x)*(xx-x-h)/h*2/(-h)*2+y*(xx-x-h/2)*(xx-x-h)/(-h)*2/(-h);
      image1.Canvas.pixels[cepx+trunc(xx*cp), cepy-trunc(yy*cp)]:=clgreen;
      xx:=xx+(0.001);
      end;
    x:=x+h;
    y:=ny;
    end;
    ny:=12.5-0.5*13;
    c:=12.5-0.5*(13-(h/2));
    s:=s+(y+4*c+ny)/6*h;
    xx:=x-h/2;
    while xx<=x+h+h/2 do
    begin
    yy:=ny*(xx-x)*(xx-x-h/2)/h/h*2+c*(xx-x)*(xx-x-h)/h*2/(-h)*2+y*(xx-x-h/2)*(xx-x-h)/(-h)*2/(-h);
    image1.Canvas.pixels[cepx+trunc(xx*cp), cepy-trunc(yy*cp)]:=clgreen;
    xx:=xx+(0.001);
    end;

    x:=-0.102357;
    cepx:=form1.width div 2;
    cepy:=form1.height div 2;
    yy:=sqrt(8-x);
    while x<=13-h+(h/100)-h do
    begin
    if (x+h/2)<5.7983856 then
      c:=sqrt(8-(x+h/2))
    else
      c:=-2+sqrt(64-((x+h/2)-13)*((x+h/2)-13));
    if (x+h)<5.7983856 then
      nyy:=sqrt(8-(x+h))
    else
      nyy:=-2+sqrt(64-((x+h)-13)*((x+h)-13));
    s:=s-(yy+4*c+nyy)/6*h;
      xx:=x-h/2;
      while xx<=x+h+h/2 do
      begin
      y:=nyy*(xx-x)*(xx-x-h/2)/h/h*2+c*(xx-x)*(xx-x-h)/h*2/(-h)*2+yy*(xx-x-h/2)*(xx-x-h)/(-h)*2/(-h);
      image1.Canvas.pixels[cepx+trunc(xx*cp), cepy-trunc(y*cp)]:=clgreen;
      xx:=xx+(0.001);
      end;
    x:=x+h;
    yy:=nyy;
    end;
    c:=-2+sqrt(64-(13-h/2-13)*(13-h/2-13));
    nyy:=-2+sqrt(64-(13-13)*(13-13));
    s:=s-(yy+4*c+nyy)/6*h;
      xx:=x-h/2;
      while xx<=x+h+h/2 do
      begin
      y:=nyy*(xx-x)*(xx-x-h/2)/h/h*2+c*(xx-x)*(xx-x-h)/h*2/(-h)*2+yy*(xx-x-h/2)*(xx-x-h)/(-h)*2/(-h);
      image1.Canvas.pixels[cepx+trunc(xx*cp), cepy-trunc(y*cp)]:=clgreen;
      xx:=xx+(0.001);
      end;
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(42.339349999999996-s);
    end;
  end
else
  begin
  cepx:=form1.width div 2;
  cepy:=form1.height div 2;
  if combobox2.text='окружность' then
    begin
    image1.Canvas.brush.style:=bsclear;
    image1.Canvas.rectangle(cepx-cp, cepy-10*cp, cepx+cp*9,cepy);
    image1.Canvas.brush.style:=bssolid;
    nyy:=round(sqrt(strtoint(edit1.text)))-1;
    h:=10/nyy;
    x:=-1-h;
    for i:=-1 to round(nyy-1) do
      begin
      x:=x+h;
      y:=0-h;
      for j:=0 to round(nyy) do
        begin
        y:=y+h;
        if (x>=0) and (x<=8) and ((5+sqrt(16-(x-4)*(x-4)))>=y) and ((5-sqrt(16-(x-4)*(x-4))<=y)) then
          begin
          ny:=ny+1;
          image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
          end
        else
          image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
        end;
      end;
    s:=100*ny/strtoint(edit1.text);
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(50.2654824574-s);
    end
  else if combobox2.text='прямолинейная фигура' then
    begin
    image1.Canvas.pen.color:=clBlack;
    image1.Canvas.brush.style:=bsclear;
    image1.Canvas.rectangle(cepx+cp, cepy-10*cp, cepx+cp*11,cepy);
    image1.Canvas.brush.style:=bssolid;
    nyy:=round(sqrt(strtoint(edit1.text)))-1;
    h:=10/nyy;
    x:=1-h;
    for i:=-1 to round(nyy-1) do
      begin
      x:=x+h;
      y:=0-h;
      for j:=0 to round(nyy) do
        begin
        y:=y+h;
        if (x>=6/5) and (x<=24/11) and (3*x>=y) and (4-x/3<=y)then
          begin
          yy:=yy+1;
          image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
          end
        else if (x>=24/11) and (x<=28/3) and (6+x/4>=y) and (4-x/3<=y) then
          begin
          yy:=yy+1;
          image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
          end
        else if (x>=28/3) and (x<=153/14) and (55-5*x>=y) and (4-x/3<=y) then
          begin
          yy:=yy+1;
          image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
          end
        else image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
        end;
      end;
    s:=100*yy/strtoint(edit1.text);
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(45.866454276-s);
    end
  else if combobox2.text='пораболла+прямая' then
    begin
    image1.Canvas.pen.color:=clBlack;
    image1.Canvas.brush.style:=bsclear;
    image1.Canvas.rectangle(cepx+cp, cepy-9*cp, cepx+cp*10,cepy);
    image1.Canvas.brush.style:=bssolid;
    nyy:=round(sqrt(strtoint(edit1.text)))-1;
    h:=9/nyy;
    x:=1-h;
    for i:=0 to round(nyy) do
      begin
      x:=x+h;
      y:=0-h;
      for j:=0 to round(nyy) do
        begin
        y:=y+h;
        if (x>=2.78036) and (x<=7.55297) and ((5+x/3)>=y) and ((x-5)*(x-5)+1<=y) then
          begin
          yy:=yy+1;
          image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
          end
        else image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
        end;
      end;
    s:=81*yy/strtoint(edit1.text);
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(18.118230000000004-s);
    end
  else
    begin
    image1.Canvas.pen.color:=clBlack;
    image1.Canvas.brush.style:=bsclear;
    image1.Canvas.rectangle(cepx-cp, cepy-15*cp, cepx+cp*14,cepy);
    image1.Canvas.brush.style:=bssolid;
    nyy:=round(sqrt(strtoint(edit1.text)))-1;
    h:=15/nyy;
    x:=-1-h;
    for i:=0 to round(nyy) do
      begin
      x:=x+h;
      y:=0-h;
      for j:=0 to round(nyy) do
        begin
        y:=y+h;
        if (x>=-0.102357) and (x<=4.18826) and (3+1.5*x>=y) and (sqrt(8-x)<=y)then
        begin
        yy:=yy+1;
        image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
        end
      else if (x>=4.18826) and (x<=5.7983856) and ((6-x)*(6-x)+6>=y) and (sqrt(8-x)<=y) then
        begin
        yy:=yy+1;
        image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
        end
      else if (x>=5.7983856) and (x<=7.63746) and ((6-x)*(6-x)+6>=y) and (-2+sqrt(64-(x-13)*(x-13))<=y) then
        begin
        yy:=yy+1;
        image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
        end
      else if (x>=7.63746) and (x<=13) and (12.5-0.5*x>=y) and (-2+sqrt(64-(x-13)*(x-13))<=y) then
        begin
        yy:=yy+1;
        image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clgreen;
        end
      else image1.Canvas.pixels[cepx+trunc(x*cp), cepy-trunc(y*cp)]:=clred;
        end;
      end;
    s:=225*yy/strtoint(edit1.text);
    label2.caption:=floattostr(s);
    label5.caption:=floattostr(42.339349999999996-s);
    end
  end

end;

end.
