VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Form1"
   ClientHeight    =   5850
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   9045
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5850
   ScaleWidth      =   9045
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer6 
      Enabled         =   0   'False
      Interval        =   20
      Left            =   5520
      Top             =   3240
   End
   Begin VB.Timer Timer5 
      Enabled         =   0   'False
      Interval        =   20
      Left            =   4440
      Top             =   3120
   End
   Begin VB.Timer Timer4 
      Enabled         =   0   'False
      Interval        =   20
      Left            =   3360
      Top             =   3120
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   20
      Left            =   5520
      Top             =   3720
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   20
      Left            =   4440
      Top             =   3720
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   20
      Left            =   3360
      Top             =   3720
   End
   Begin VB.CommandButton Command2 
      Caption         =   "SALIR"
      Height          =   495
      Left            =   4920
      TabIndex        =   2
      Top             =   4200
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "INICIAR"
      Height          =   495
      Left            =   3120
      TabIndex        =   1
      Top             =   4200
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "MOVIMIENTO"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2640
      TabIndex        =   0
      Top             =   240
      Width           =   3375
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H80000007&
      BorderStyle     =   6  'Inside Solid
      FillStyle       =   0  'Solid
      Height          =   735
      Left            =   120
      Shape           =   3  'Circle
      Top             =   1080
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Timer1.Enabled = True
End Sub

Private Sub Timer1_Timer()
If Shape1.Top <= 4920 Then
Shape1.Top = Shape1.Top + 50
Else
Shape1.Left = Shape1.Left + 50
If Shape1.Left >= 1560 Then
Timer1.Enabled = False
Timer2.Enabled = True
End If
End If
End Sub

Private Sub Timer2_Timer()
If Shape1.Left >= 1560 Then
Shape1.Top = Shape1.Top - 50
End If
If Shape1.Top <= 1080 Then
Timer2.Enabled = False
Timer3.Enabled = True
End If
End Sub


Private Sub Timer3_Timer()
If Shape1.Top <= 1080 Then
Shape1.Left = Shape1.Left + 50
End If
If Shape1.Left >= 6360 Then
Timer3.Enabled = False
Timer4.Enabled = True
End If
End Sub

Private Sub Timer4_Timer()
If Shape1.Left >= 6360 Then
Shape1.Top = Shape1.Top + 50

End If
If Shape1.Top >= 4920 Then
Timer4.Enabled = False
Timer5.Enabled = True
End If
End Sub

Private Sub Timer5_Timer()
If Shape1.Top >= 4920 Then
Shape1.Left = Shape1.Left + 50
End If
If Shape1.Left >= 7920 Then
Timer5.Enabled = False
Timer6.Enabled = True

End If
End Sub

Private Sub Timer6_Timer()
If Shape1.Left >= 7920 Then
Shape1.Top = Shape1.Top - 50
End If
If Shape1.Top <= 1080 Then
Timer6.Enabled = False
End If
End Sub
