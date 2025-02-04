VERSION 5.00
Begin VB.Form F_Main 
   AutoRedraw      =   -1  'True
   BorderStyle     =   0  '없음
   ClientHeight    =   4500
   ClientLeft      =   -30
   ClientTop       =   -360
   ClientWidth     =   9000
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "맑은 고딕"
      Size            =   12
      Charset         =   129
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "F_main.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   300
   ScaleMode       =   3  '픽셀
   ScaleWidth      =   600
   StartUpPosition =   1  '소유자 가운데
   Begin VB.Timer RxTimer 
      Left            =   7920
      Top             =   1800
   End
   Begin VB.ListBox List_ID 
      Height          =   375
      Left            =   2400
      TabIndex        =   7
      Top             =   2520
      Visible         =   0   'False
      Width           =   1695
   End
   Begin ProjectCris.MayImage Image_Ico 
      Height          =   615
      Left            =   2400
      TabIndex        =   6
      Top             =   2955
      Width           =   870
      _ExtentX        =   1535
      _ExtentY        =   1085
      Border          =   3
      BorderAngle     =   10
      Picture         =   "F_main.frx":C2B2
      Arrow           =   1
      BackColor       =   16777215
   End
   Begin ProjectCris.MayButton Button_Close 
      Height          =   300
      Left            =   8160
      TabIndex        =   2
      Top             =   -15
      Width           =   735
      _ExtentX        =   1296
      _ExtentY        =   529
      Caption         =   "X"
      Border          =   2
      BackColor       =   8421631
      BorderAngle     =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "맑은 고딕"
         Size            =   12
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin ProjectCris.MayButton Button_Ok 
      Height          =   735
      Left            =   5160
      TabIndex        =   1
      Top             =   2880
      Width           =   735
      _ExtentX        =   1296
      _ExtentY        =   1296
      Caption         =   "확인"
      Border          =   4
      BackColor       =   12632256
      Alpha           =   25
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "맑은 고딕"
         Size            =   12
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin ProjectCris.MayText Text_ID 
      Height          =   525
      Left            =   3120
      TabIndex        =   0
      Top             =   3000
      Width           =   2175
      _ExtentX        =   3836
      _ExtentY        =   926
      Border          =   3
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "나눔고딕"
         Size            =   14.25
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      AutoSize        =   -1  'True
      MinSize         =   2175
      MaxSize         =   6500
      BorderAngle     =   0
   End
   Begin ProjectCris.MayButton Button_Min 
      Height          =   300
      Left            =   7485
      TabIndex        =   3
      Top             =   -15
      Width           =   735
      _ExtentX        =   1296
      _ExtentY        =   529
      Caption         =   "-"
      Border          =   2
      BackColor       =   16744576
      BorderAngle     =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "맑은 고딕"
         Size            =   12
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin ProjectCris.MayText TextPW 
      Height          =   525
      Left            =   3120
      TabIndex        =   8
      Top             =   3600
      Visible         =   0   'False
      Width           =   2175
      _ExtentX        =   3836
      _ExtentY        =   926
      PassWord        =   -1  'True
      Border          =   3
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "나눔고딕"
         Size            =   14.25
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      AutoSize        =   -1  'True
      MinSize         =   2175
      MaxSize         =   6500
      BorderAngle     =   0
   End
   Begin VB.Label Label_Cris 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "Cris"
      BeginProperty Font 
         Name            =   "나눔고딕 ExtraBold"
         Size            =   72
         Charset         =   129
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1650
      Left            =   3240
      TabIndex        =   5
      Top             =   840
      Width           =   2460
   End
   Begin VB.Label Text_null 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      BorderStyle     =   1  '단일 고정
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   4080
      Visible         =   0   'False
      Width           =   150
   End
   Begin VB.Menu mn_Tray 
      Caption         =   "SetTray"
      Visible         =   0   'False
      Begin VB.Menu mn_Cris 
         Caption         =   "Cris"
         Enabled         =   0   'False
      End
      Begin VB.Menu mn_Line0 
         Caption         =   "-"
      End
      Begin VB.Menu mn_LogOut 
         Caption         =   "로그아웃"
      End
      Begin VB.Menu mn_Setting 
         Caption         =   "환경설정"
      End
      Begin VB.Menu mn_Line1 
         Caption         =   "-"
      End
      Begin VB.Menu mn_exit 
         Caption         =   "끝내기"
      End
   End
End
Attribute VB_Name = "F_Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Type BITMAPINFOHEADER
        biSize As Long
        biWidth As Long
        biHeight As Long
        biPlanes As Integer
        biBitCount As Integer
        biCompression As Long
        biSizeImage As Long
        biXPelsPerMeter As Long
        biYPelsPerMeter As Long
        biClrUsed As Long
        biClrImportant As Long
End Type
Private Type RGBQUAD
        rgbBlue As Byte
        rgbGreen As Byte
        rgbRed As Byte
        rgbReserved As Byte
End Type
Private Type BITMAPINFO
        bmiHeader As BITMAPINFOHEADER
        bmiColors() As RGBQUAD
End Type
Private Const DIB_RGB_COLORS = 0

Private Declare Function SetProcessWorkingSetSize Lib "kernel32" (ByVal hProcess As Long, ByVal dwMinimumWorkingSetSize As Long, ByVal dwMaximumWorkingSetSize As Long) As Long
Private Declare Function GetCurrentProcess Lib "kernel32" () As Long
Private Sub Button_Close_Click()
    SaveSet
    SaveLog
    SaveSetting "Cris", "Cris", "Run", "Close"
    Unload F_Main
    Unload F_Cris
    Unload F_Memo
    Unload F_Noti
    Unload F_Sub
    End
    
End Sub
Private Sub Button_Min_Click()
    Me.WindowState = 1
End Sub
Private Sub Button_Ok_Click()

    If LenB(Trim(Text_ID.Text)) > 0 Then
    
        CrisLogIn
            
        For i = 0 To IDcnt
            
            If IDArray(i).ID = Text_ID.Text Then GoTo AID
            
        Next i
        
            SaveSetting "Cris", "ID", "Cnt", GetSetting("Cris", "ID", "Cnt", 0) + 1
            SaveSetting "Cris", "ID", GetSetting("Cris", "ID", "Cnt", 0) - 1, Text_ID.Text
            
AID:
            
        'ShowTip "Cris", "안녕하세요", 1
    End If
End Sub
Public Sub CrisLogIn()
        mn_Cris.Caption = Text_ID.Text
        CreatTray Me, "Cris", "Cris", GetLanInf("Text.4"), 1
        F_Main.Visible = False
        F_Cris.Visible = False
        SetCris
End Sub
Private Sub Form_Load()
Dim i As Integer

SetProcessWorkingSetSize GetCurrentProcess(), -1&, -1&
    '프로세스 메모리 용량 정리
    
B_bas.DrawLoad
    '처음 이미지 그리기

List_ID.Clear
IDcnt = GetID
If IDcnt = 0 Then List_ID.AddItem "발견되지 않음", 0 Else List_ID.AddItem "새로 만들기", IDcnt
    'ID List를 불러오고 채웁니다.

LoadCrisSet
    '세팅 불러오기
    
If GetSetting("Cris", "App", "Install", False) = False Then MsgBox GetLanInf("Text.1"), vbCritical, "Cris": End
    '설치 여부를 확인
    
'If GetSetting("Cris", "Cris", "Run", "Close") = "Running" Then MsgBox GetLanInf("Text.2"), vbInformation, "Cris"
    '비정상적 종료 확인

If App.PrevInstance Then MsgBox GetLanInf("Text.3"), vbCritical + vbOKOnly, "Cris": End
    '중복 실행을 방지합니다.

    WindowTransparency F_Main.hWnd, byValue, , 225
        '해당 폼의 투명도를 255-200 으로 설정합니다.
        
    Text_ID_Change
        'Text_ID_Change를 적용시켜 위치를 원위치 시킵니다.
        
End Sub
Private Sub Form_MouseDown(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If Button = 1 Then
        ReleaseCapture
        SendMessage hWnd, &HA1, 2, ByVal 0&
    End If
        '해당폼을 드래그로 움직일 수 있게합니다.
End Sub
Private Sub Image_Ico_Click()

    If List_ID.Visible Then List_ID.Visible = False Else List_ID.Visible = True
    
End Sub
Private Sub Label_Cris_MouseDown(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If Button = 1 Then
        ReleaseCapture
        SendMessage hWnd, &HA1, 2, ByVal 0&
    End If
        '해당폼을 드래그로 움직일 수 있게합니다.
End Sub
Private Sub List_ID_Click()

    If List_ID.ListIndex = IDcnt Then
    
        Text_ID.Text = ""
        Text_ID.SetFocus
        
    Else
    
        Text_ID.Text = List_ID.List(List_ID.ListIndex)
        
    End If
    
End Sub
Private Sub mn_exit_Click()

    Button_Close_Click
    
End Sub
Private Sub mn_LogOut_Click()
On Error Resume Next

    UnloadTray
    Me.Refresh
    F_Cris.Visible = False
    F_Sub.Visible = False
        CrisState.SubShow = False
    F_Memo.Visible = False
        CrisState.MemoVisible = False
    F_Noti.Visible = False
        cirsstate.NotiVisible = False
    
    Form_Load
    Me.Visible = True
        '로그아웃되었을떄
End Sub
Private Sub mn_Setting_Click()
    NHex = 2
    F_Cris.HexRgn_Click 3
End Sub

Private Sub Text_ID_Change()
    Text_ID.Left = 313 - ((Text_ID.Width + Button_Ok.Width - 10) / 2)
    Button_Ok.Left = Text_ID.Left + Text_ID.Width - 25
    Image_Ico.Left = Text_ID.Left - Image_Ico.Width + 7
    List_ID.Left = Image_Ico.Left
        '텍스트길이가 일정량길어지면 위치를 재조정합니다.
End Sub
Private Sub Text_ID_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then Button_Ok_Click
    'Enter키를 눌렀을떄도 OK버튼을 누른것과 같은효과를 적용합니다.
End Sub
