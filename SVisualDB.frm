VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6195
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8670
   LinkTopic       =   "Form1"
   ScaleHeight     =   6195
   ScaleWidth      =   8670
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "GUARDAR"
      Height          =   495
      Left            =   4920
      TabIndex        =   15
      Top             =   5040
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "ELIMINAR"
      Height          =   495
      Left            =   4920
      TabIndex        =   14
      Top             =   3960
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "AGREGAR"
      Height          =   495
      Left            =   4920
      TabIndex        =   13
      Top             =   3000
      Width           =   1335
   End
   Begin VB.Data Data1 
      Connect         =   "Access"
      DatabaseName    =   "C:\Users\estudiante\Desktop\laboratorio\Estudiantes.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   495
      Left            =   5520
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Estudiantes"
      Top             =   1560
      Width           =   2175
   End
   Begin VB.TextBox Text6 
      DataField       =   "Semestre"
      DataSource      =   "Data1"
      Height          =   495
      Left            =   2040
      TabIndex        =   12
      Top             =   4800
      Width           =   2055
   End
   Begin VB.TextBox Text5 
      DataField       =   "Facultad"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   2040
      TabIndex        =   11
      Top             =   4080
      Width           =   2055
   End
   Begin VB.TextBox Text4 
      DataField       =   "Edad"
      DataSource      =   "Data1"
      Height          =   405
      Left            =   2040
      TabIndex        =   10
      Top             =   3360
      Width           =   2055
   End
   Begin VB.TextBox Text3 
      DataField       =   "Apellidos"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   2040
      TabIndex        =   9
      Top             =   2520
      Width           =   2055
   End
   Begin VB.TextBox Text2 
      DataField       =   "Nombres"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   2040
      TabIndex        =   8
      Top             =   1800
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      DataField       =   "Carne"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   2040
      TabIndex        =   7
      Top             =   1200
      Width           =   2055
   End
   Begin VB.Label Label7 
      Caption         =   "Semestre"
      Height          =   375
      Left            =   360
      TabIndex        =   6
      Top             =   4800
      Width           =   1335
   End
   Begin VB.Label Label6 
      Caption         =   "Facultad"
      Height          =   375
      Left            =   360
      TabIndex        =   5
      Top             =   4080
      Width           =   1335
   End
   Begin VB.Label Label5 
      Caption         =   "Edad"
      Height          =   375
      Left            =   360
      TabIndex        =   4
      Top             =   3360
      Width           =   1215
   End
   Begin VB.Label Label4 
      Caption         =   "Apellido"
      Height          =   375
      Left            =   360
      TabIndex        =   3
      Top             =   2520
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "Nombre"
      Height          =   255
      Left            =   360
      TabIndex        =   2
      Top             =   1920
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "Carne"
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   1200
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "ESTUDIANTES"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2400
      TabIndex        =   0
      Top             =   0
      Width           =   3855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Data1.Recordset.AddNew
End Sub

Private Sub Command2_Click()
Data1.Recordset.Delete
End Sub

Private Sub Command3_Click()
Data1.Recordset.Update
End Sub
