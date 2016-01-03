{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    MemoCodingText: TMemo;
    MemoText: TMemo;
    ButtonAddKey: TButton;
    EditKey: TEdit;
    ButtonCoding: TButton;
    MemoDecodingText: TMemo;
    RadioButtonLineKey: TRadioButton;
    RadioButtonGenerKey: TRadioButton;
    ButtonKasiskiTest: TButton;
    LabelKeyLength: TLabel;
    LabelCurrentKey: TLabel;
    ButtonOpen: TButton;
    OpenDialog: TOpenDialog;
    ButtonSave: TButton;
    SaveDialog: TSaveDialog;
    MemoGCD: TMemo;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ButtonAddKeyClick(Sender: TObject);
    procedure ButtonCodingClick(Sender: TObject);
    procedure RadioButtonLineKeyClick(Sender: TObject);
    procedure RadioButtonGenerKeyClick(Sender: TObject);
    procedure ButtonKasiskiTestClick(Sender: TObject);
    procedure ButtonOpenClick(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
    procedure EditKeyKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Key,keyword : string;
  alphabet : string = 'абвгдеёжзийклмнопрстуфхцчшщъыьэюя';

implementation

{$R *.dfm}





procedure TForm1.ButtonAddKeyClick(Sender: TObject);
begin
   Key := EditKey.Text;
   keyword := EditKey.Text;
   LabelCurrentKey.Caption := 'Current key: '+key;
end;

function gcd (a,b : integer) : integer;     //Поиск НОДа
var
   i : integer;
begin
   while (a <> b) do
   if (a > b) then
      a := a - b
   else
      b := b - a;
   result := a;
end;

function DeleteAll(memocodingtext : TMemo):string;     //Удаление
var
  I,n: Integer;
begin
   n := 1;
   result := '';
   for I := 1 to length(memocodingtext.Text) do
   if (((ord(memocodingtext.Text[i]) >= 1072) and (ord(memocodingtext.Text[i]) <= 1103)) or (memocodingtext.Text[i] = 'ё'))  then
      begin
         result := result + memocodingtext.Text[i];
         inc(n);
      end;
end;

function Kasiski_Method(memocodingtext,memogcd : TMemo) : integer;       //Касиски
var
   i,j,nl,k : integer;
   l,nods : array of integer;
   string_1,string_2 : string[3];
   temp : string;
begin
   SetLength(nods,length(memocodingtext.Text));
   SetLength(l,length(memocodingtext.Text));
   temp := '';
   for I := 0 to length(memocodingtext.Text) - 1 do
      nods[i] := 0;
   nl := 0;
   temp := deleteall(memocodingtext);
   for I := 1 to length(temp) - 3 do
   begin
      delete(string_1,1,3);
      insert(temp[i],string_1,1);
      insert(temp[i+1],string_1,2);
      insert(temp[i+2],string_1,3);

      for j := i+1 to length(temp) - 3 do
      begin
         delete(string_2,1,3);
         insert(temp[j],string_2,1);
         insert(temp[j+1],string_2,2);
         insert(temp[j+2],string_2,3);

         if (AnsiCompareText(string_1,string_2) = 0) then
            begin
               l[nl] := j - i;
               inc(nl);
               memogcd.Lines.Add(string_1+' '+string_2+' '+inttostr(j-i));
            end;
      end;

   end;
   for k := 0 to nl - 1 do
         for j := k+1 to nl - 1 do
            inc(nods[gcd(l[k],l[j])]);

      result := 0;
      for k := 1 to length(temp) - 1 do
        if (nods[result] < nods[k]) then
           result := k;
end;





procedure DecodingGen(MemoDecodingText,MemoCodingText : TMemo); //Декодирование самогена
var
  I,j,k,l: Integer;
begin
   MemoDecodingText.Text := '';
   k := 1;
   l := 1;
   for I := 1 to length(MemoCodingText.Text) do
   begin
      if pos(MemoCodingText.Text[i],alphabet) <> 0 then
      begin
         if k <= length(keyword) then
         begin
            j := ((pos(MemoCodingText.Text[i],alphabet) - 1) - (pos(keyword[k],alphabet) - 1) + Length(alphabet)) mod Length(alphabet) + 1 ;
            MemoDecodingText.Text := MemoDecodingText.Text + alphabet[j];
            inc(k);
         end
         else
         begin
            while pos(MemoDeCodingText.Text[l],alphabet) = 0 do
              inc(l);
               j := ((pos(MemoCodingText.Text[i],alphabet) - 1) - (pos(MemoDecodingText.Text[l],alphabet) - 1) + Length(alphabet)) mod Length(alphabet) + 1 ;
               MemoDecodingText.Text := MemoDecodingText.Text + alphabet[j];
               inc(l);

         end;
      end
      else
         MemoDecodingText.Text := MemoDecodingText.Text + MemoCodingText.Text[i];
   end;
end;

procedure CodingGen(MemoText,MemoCodingText : TMemo);    //Кодирование самогена
var
   i,j,k : integer;
begin
   MemoCodingText.Text := '';
   MemoText.Text := AnsiLowerCase(memotext.Text);
   key := AnsiLowerCase(key);
   for I := 1 to length(MemoText.Text) do
   if (ansipos(lowercase(memotext.Text[i]),alphabet) <> 0) then
         key := key + MemoText.Text[i];
   j := 1;
   k := 1;
   for I := 1 to length(MemoText.Text) do
   begin
      if (ansipos(lowercase(memotext.Text[i]),alphabet) <> 0) then
      begin
         j := (((ansipos(lowercase(MemoText.Text[i]),alphabet) - 1 + ansipos(lowercase(key[k]),alphabet) - 1) mod length(alphabet) )) + 1;
         MemoCodingText.Text := MemoCodingText.Text + alphabet[j];
         inc(k);
      end
      else
         MemoCodingText.Text := MemoCodingText.Text + MemoText.Text[i];
   end;
end;

procedure LineCoding(MemoText,MemoCodingText : TMemo);    //Кодирование прямым
var
   i,j,k : integer;
begin
   MemoCodingText.Text := '';
   MemoText.Text := AnsiLowerCase(memotext.Text);
   key := AnsiLowerCase(key);
   j := 1;
   k := 0;
   for I := 1 to length(MemoText.Text) do
   begin
      if (ansipos(lowercase(memotext.Text[i]),alphabet) <> 0) then
      begin
         if (k = length(key)) then
            k := 0;
         inc(k);
         j := (((ansipos(lowercase(MemoText.Text[i]),alphabet) - 1 + ansipos(lowercase(key[k]),alphabet) - 1) mod length(alphabet) )) + 1;
         MemoCodingText.Text := MemoCodingText.Text + alphabet[j];
      end
      else
         MemoCodingText.Text := MemoCodingText.Text + MemoText.Text[i];
   end;
end;

procedure LineDecoding(MemoDecodingText,MemoCodingText : TMemo);   //Декодирование прямого
var
  I,j,k: Integer;
begin
   MemoDecodingText.Text := '';
   k := 0;
   for I := 1 to length(MemoCodingText.Text) do
   begin
      if pos(MemoCodingText.Text[i],alphabet) <> 0 then
      begin
         if (k = length(key)) then
            k := 0;
         inc(k);
         j := ((pos(MemoCodingText.Text[i],alphabet) - 1) - (pos(key[k],alphabet) - 1) + Length(alphabet)) mod Length(alphabet) + 1 ;
         MemoDecodingText.Text := MemoDecodingText.Text + alphabet[j];
      end
      else
         MemoDecodingText.Text := MemoDecodingText.Text + MemoCodingText.Text[i];
   end;
end;

procedure TForm1.ButtonCodingClick(Sender: TObject);
begin
   if (key <> '') then
   begin
       if (RadioButtonGenerKey.Checked) then
       begin
          CodingGen(MemoText,MemoCodingText);
       //   DecodingGen(memodecodingtext,memocodingtext);
       end
       else
       begin
          LineCoding(MemoText,MemoCodingText);
         // LineDecoding(MemoDecodingText,MemoCodingText);
       end;
   end;
end;

procedure TForm1.ButtonKasiskiTestClick(Sender: TObject);
begin
   if (MemoCodingText.Text <> '') then
      LabelKeyLength.Caption := 'Key length: '+inttostr(Kasiski_Method(MemoCodingText,memogcd));
end;

procedure TForm1.ButtonOpenClick(Sender: TObject);
begin
   if (OpenDialog.Execute) then
      MemoText.Lines.LoadFromFile(opendialog.FileName);
end;

procedure TForm1.ButtonSaveClick(Sender: TObject);
begin
   if SaveDialog.Execute then
      MemoCodingText.Lines.SaveToFile(SaveDialog.FileName);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   if (MemoCodingText.Text <> '') then
   begin
       if (RadioButtonGenerKey.Checked) then
          DecodingGen(memodecodingtext,memocodingtext)
       else
          LineDecoding(MemoDecodingText,MemoCodingText);
   end;
end;

procedure TForm1.EditKeyKeyPress(Sender: TObject; var Key: Char);
begin
   if (pos(key,alphabet) = 0) and (key <> #8) then
      key := #0;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   MemoCodingText.Text := '';
   MemoText.Text := '';
   MemoDecodingText.Text := '';
   MemoGCD.Text := '';
end;

procedure TForm1.RadioButtonGenerKeyClick(Sender: TObject);
begin
   RadioButtonLineKey.Checked := false;
end;

procedure TForm1.RadioButtonLineKeyClick(Sender: TObject);
begin
   RadioButtonGenerKey.Checked := false;
end;

end.

