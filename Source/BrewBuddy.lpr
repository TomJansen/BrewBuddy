program BrewBuddy;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, tachartlazaruspkg,
  printer4lazarus, datetimectrls, FrMain, FrFermentables, Containers, Data,
  Hulpfuncties, rcstrngs, uniqueinstance_package;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Title:='BrewBuddy';
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.

