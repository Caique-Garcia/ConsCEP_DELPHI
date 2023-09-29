object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 434
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 390
    Height = 434
    Align = alClient
    BevelOuter = bvNone
    Color = 16119285
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 386
    ExplicitHeight = 433
    object Shape2: TShape
      Left = 72
      Top = 76
      Width = 177
      Height = 41
      Brush.Style = bsClear
      Pen.Color = clGray
    end
    object EditCEP: TEdit
      Left = 79
      Top = 86
      Width = 166
      Height = 25
      BorderStyle = bsNone
      Color = 16119285
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TextHint = 'CEP'
    end
    object btnGo: TButton
      Left = 252
      Top = 76
      Width = 57
      Height = 41
      Caption = 'Go'
      TabOrder = 1
      OnClick = btnGoClick
    end
    object Memo: TMemo
      Left = 72
      Top = 160
      Width = 249
      Height = 169
      BorderStyle = bsNone
      Color = 16119285
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'http://viacep.com.br/ws'
    Params = <>
    RaiseExceptionOn500 = False
    SynchronizedEvents = False
    Left = 24
    Top = 352
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Resource = '37900546/json/'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 32
    Top = 360
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 40
    Top = 368
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = MemTable
    FieldDefs = <>
    Response = RESTResponse1
    Left = 48
    Top = 376
  end
  object MemTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 56
    Top = 384
  end
end
