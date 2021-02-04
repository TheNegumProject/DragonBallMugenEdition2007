;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

;---------------------------------------------------------------------------


;-------| Hypers |--------------------------------------------------

[Command]
name = "cell2"
command = D, DF, F, D, DF, F, b+c
time = 30

[Command]
name = "Genkidama"
command = ~F, B, DB, D, DF, F, a
time = 35

;-------| Supers |--------------------------------------------------

[Command]
name = "absorcion"
command = ~D, DB, B, F, x
time = 30

[Command]
name = "hypercombo"
command = ~D, DB, B, F, b
time = 30

[Command]
name = "kamehameha"
command = ~D, DB, B, F, z
time = 30

[Command]
name = "Makankosapo"
command = ~D, DB, B, F, y
time = 30

;-------|Especiales|--------------------------------------------------

[Command]
name = "rafagadeviento"
command = D,DB, b

;[Command]
;name = "rafagadeviento2"
;command = D,DB, a

[Command]
name = "kiensan"
command = D,F, b

[Command]
name = "Taioken"
command = F, B, x
time = 20

[Command]
name = "Ki Ball"
command = D, B, z

[Command]
name = "rayo3"
command = D,F, z

[Command]
name = "rayo2"
command = D,F, y

[Command]
name = "rayo"
command = D,F, x

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

;-------| Otros |--------------------------------------------------

[Command]
name = "Super Combo"
command = D,DF, c
time = 40

[Command]
name = "combo3"
command = D,DB,a

[Command]
name = "Combo2"
command = D,DF, b

[command]
name = "Golpe"
command = D,DB, c

[command]
name = "Colazo"
command = D,DF, a

[Command]
name = "Ataque Rapido"
command = y+z
time = 18

[Command]
name = "fly"
command = b+y
time = 30

[Command]
name = "teletrasnporte"
command = z+c
time = 30

[Command]
name = "start"
command = s
time = 1

[Command]
name = "Combo"
command = D,DB,D,DF, a

;---------------------------------------------------------------------------
;Ai
[Command]
name = "ai"
command = x,x,x,x,x,x,x,x,x,x,a+b+c+z+x+y
time = 1

[Command]
name = "ai1"
command = y,y,y,y,y,y,y,y,y,y,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai2"
command = U,U,U,U,U,U,U,U,U,U,U,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai4"
command = a,b,c,z,x,y,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai5"
command = U,D,F,B,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai6"
command = D,F,U,B,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai7"
command = x,D,x,D,x,D,x,D,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai8"
command = F,F,F,F,F,F,B,U,U,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai9"
command = F,F,F,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai10"
command = B,U,U,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai11"
command = F,F,F,B,U,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai12"
command = F,B,F,B,F,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai13"
command = x,y,z,a,b,c,a+b+c+z+x+y+U+D+F+B
time = 1
;---------------------------------------------------------------------------
;QCF
;---------------------------------------------------------------------------
[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

;---------------------------------------------------------------------------
;FQCF
;---------------------------------------------------------------------------
[Command]
name = "FQCF_a"
command = ~F, D, DF, a

[Command]
name = "FQCF_b"
command = ~F, D, DF, b

[Command]
name = "FQCF_c"
command = ~F, D, DF, c

[Command]
name = "FQCF_x"
command = ~F, D, DF, x

[Command]
name = "FQCF_y"
command = ~F, D, DF, y

[Command]
name = "FQCF_z"
command = ~F, D, DF, z

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "charge" ;nombre del comando que se comunica con el ChangeState del [State -1] decargarki
command = /a ; comando con que se realiza

[Command]
name = "charge 1"
command = /x

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holda";Required (do not remove)
command = /a
time = 1

[Command]
name = "holdb";Required (do not remove)
command = /b

time = 1
[Command]
name = "holdc";Required (do not remove)
command = /c
time = 1

[Command]
name = "holdx";Required (do not remove)
command = /x
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /y
time = 1

[Command]
name = "holdz";Required (do not remove)
command = /z
time = 1

[Command]
name = "charge" ;nombre del comando que se comunica con el ChangeState del [State -1] decargarki
command = /a ; comando con que se realiza

[Command]
name = "charge 1"
command = /x

[Command]
name = "DU"
command = $D, $U
time = 12

[Command]
name = "Long Jump"
command = ~D, UF
time = 12

[Command]
name = "Long Jump"
command = ~D, UB
time = 12

;---------------------------------------------------------------------------
; 2. State entry

; --------------
[Statedef -1]
;---------------------------------------------------------------------------
;AI mode
[State -1, AI]
type = VarSet
trigger1 = command = "ai"
trigger2 = command = "ai1"
trigger3 = command = "ai2"
trigger4 = command = "ai3"
trigger5 = command = "ai4"
trigger6 = command = "ai5"
trigger7 = command = "ai6"
trigger8 = command = "ai7"
trigger9 = command = "ai8"
trigger10= command = "ai9"
trigger11= command = "ai10"
trigger12= command = "ai11"
trigger13= command = "ai12"
trigger14= command = "ai13"
var(59) = 1

;===========================================================================

;---------------------------------------------------------------------------
;Hyper Combo
[State -1]
type = ChangeState
value = 1503
triggerall = Var(30) != 59
triggerall = command = "hypercombo"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = var(32) != 1
trigger2 = movecontact
trigger3 = stateno = 1500

;---------------------------------------------------------------------------
; Ataque Rapido
[State -1]
type = ChangeState
value = 1610
triggerall = command = "Ataque Rapido"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 410
trigger5 = movecontact = 1
trigger6 = stateno = 1500

;---------------------------------------------------------------------------

;colazo
[State -1]
type = ChangeState
value = 2225
triggerall = command = "Colazo"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;---------------------------------------------------------------------------

;teletrasnporte
[State -1]
type = ChangeState
value = 1600
triggerall = command = "teletrasnporte"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;teletrasnporte
[State -1]
type = ChangeState
value = 1600
triggerall = command = "teletrasnporte"
triggerall = alive = 1
trigger1 = ctrl = 1
trigger1 = stateno >= 150
trigger2 = Stateno <= 153
trigger3 = stateno = 5000
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120
trigger14 = stateno = 5110
trigger15 = stateno = 5035
trigger16 = stateno = 5030
trigger17 = stateno = 5050
trigger18 = stateno = 5040
trigger19 = stateno = 5071

;---------------------------------------------------------------------------

;Dialogo
[State -1]
type 			= ChangeState
value 			= 195
triggerall		= (BackEdgeBodyDist > -5) && (Var(2) <= 0)
trigger1 		= (Command = "start") && (StateType = S) && (Ctrl)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Combo Sequence
[State -1]
type = changestate
value = 1182
triggerall = command = "combo3"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 8925
triggerall = var(6) = 0
triggerall = power >= 2500 ;Level 3 Super
triggerall = command = "cell2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Fly
[State -1]
type = ChangeState
value = 1500
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Fly
[State -1]
type = ChangeState
value = 1510
triggerall = command = "fly"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Flight Guard
[State -1, FlyGuard]
type = ChangeState
value = 132 ;GUARDIA AERIA
triggerall = p2movetype = A && ctrl = 1 && stateno = 1500
trigger1 = command = "holdback"
;---------------------------------------------------------------------------
;Golpe
[State -1, 2100]
type = ChangeState
value = 3105
triggerall = (command ="Golpe")&&(power > 500)
trigger1 = (ctrl)
trigger2 = stateno = 1500
trigger3 = ((stateno =[2102,2103])&&(movecontact)&&AnimElem =2,>5)

;---------------------------------------------------------------------------
;Genkidama
[State -1]
type = ChangeState
value = 1900
triggerall = command = "Genkidama";-------
triggerall = numproj = 0
triggerall = power >= 3000 ;Level 3 Super
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = stateno = 200        ;Stand_a
trigger4 = stateno = 300        ;Stand_fwd_a
trigger4 = movecontact = 1
trigger5 = stateno = 500        ;Crouch_fwd_a
trigger5 = time <= 2
trigger6 = stateno = 410        ;Crouch_b
trigger6 = movecontact = 1
trigger7 = stateno = 210        ;stand_b
trigger7 = movecontact = 1

;---------------------------------------------------------------------

;Lanzar
[State -1,]
type = ChangeState
value = 666
triggerall = command = "z"
triggerall = Time > 5
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 666
trigger2 = movecontact = 1
trigger3 = stateno = 640
trigger3 = movecontact = 1

;---------------------------------------------------------------------------

;Super Jump
[State -1]
type = ChangeState
value = 707
triggerall = command = "DU"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;Bola de energia
[State -1, Ki Ball]
type = ChangeState
value = 4040
triggerall = command = "Ki Ball"
trigger1 = statetype = S && Ctrl && power >= 420
trigger2 = stateno = 1500

;---------------------------------------------------------------------------

;Fire THUNDER
[State -1]
type = ChangeState
value = 750
triggerall = power > 550
triggerall = command = "rayo3"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Fire THUNDER 1
;[State -1]
;type = changestate
;value = 732
;triggerall = command = "x"
;triggerall = power >= 850
;triggerall = Time > 25
;trigger1 = stateno = 720

;Fire THUNDER 2
;[State -1]
;type = changestate
;value = 730
;triggerall = command = "x"
;triggerall = power >= 850
;triggerall = Time > 25
;trigger1 = stateno = 722

;---------------------------------------------------

;Fire THUNDER
[State -1]
type = ChangeState
value = 710
triggerall = power > 550
triggerall = command = "rayo2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Fire THUNDER 1
;[State -1]
;type = changestate
;value = 722
;triggerall = command = "z"
;triggerall = power >= 850
;triggerall = Time > 25
;trigger1 = stateno = 720

;Fire THUNDER 2
;[State -1]
;type = changestate
;value = 720
;triggerall = command = "z"
;triggerall = power >= 850
;triggerall = Time > 25
;trigger1 = stateno = 722

;---------------------------------------------------

;Fire THUNDER
[State -1]
type = ChangeState
value = 700
triggerall = power > 550
triggerall = command = "rayo"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Fire THUNDER 1
;[State -1]
;type = changestate
;value = 702
;triggerall = command = "y"
;triggerall = power >= 850
;triggerall = Time > 25
;trigger1 = stateno = 700

;Fire THUNDER 2
;[State -1]
;type = changestate
;value = 700
;triggerall = command = "y"
;triggerall = power >= 850
;triggerall = Time > 25
;trigger1 = stateno = 702

;---------------------------------------------------------------------------
;kame hame
[State -1]
type = ChangeState
value = 3500
triggerall = command = "kamehameha"
triggerall = var(6) = 0
triggerall = numproj = 0
triggerall = power >= 1000
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1500
;---------------------------------------------------------------------------
;kiensan
[State -1, ki_blast]
type = ChangeState
value = 1200
triggerall = command = "kiensan"
triggerall = power >= 600
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
;---------------------------------------------------------------------------
;Makankosapo
[State -1]
type = ChangeState
value = 2700
triggerall = command = "Makankosapo"
triggerall = numproj = 0
triggerall = power > 1200
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
;---------------------------------------------------------------------------
;Taioken
[State -1]
type = ChangeState
value = 3000
triggerall = var(6) = 0
triggerall = power >= 300
triggerall = command = "Taioken"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = stateno = 8748

;Rafaga de viento
;[State -1]
;type = ChangeState
;value = 2500
;triggerall = command = "rafagadeviento2"
;triggerall = command != "holddown"
;triggerall = numprojid(2550) = 0
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger2 = stateno = 1500
;;trigger2 = stateno = 200
;;trigger2 = movecontact = 1
;trigger3 = stateno = 210
;trigger3 = movecontact = 1
;trigger4 = stateno = 220
;trigger4 = movecontact = 1
;trigger5 = stateno = 230
;trigger5 = movecontact = 1
;trigger6 = stateno = 240
;,trigger6 = movecontact = 1
;trigger7 = stateno = 400
;trigger7 = movecontact = 1
;trigger8 = stateno = 410
;trigger8 = movecontact = 1
;trigger9 = stateno = 420
;trigger9 = movecontact = 1
;trigger10 = stateno = 430
;trigger10 = movecontact = 1
;---------------------------------------------------------------------------
;Rafaga de viento
[State -1]
type = ChangeState
value = 2600
triggerall = command = "rafagadeviento"
triggerall = command != "holddown"
triggerall = numprojid(2650) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
;trigger2 = stateno = 200
;trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
;---------------------------------------------------------------------------
;Cargar ki
[State -1]
type = ChangeState
value = 5040 ; valor del statedef de el charge en el cns
triggerall = Power < 3000
triggerall = ctrl = 1 ; que sepueda realizar mientas tengas el control del char
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = statetype = S

;---------------------------------------------------------------------------
; Fireball
[State -1, Fireball]
type = ChangeState
value = 10000
triggerall = (command = "QCB_x" || command = "QCB_y");&& command != "holddown"
triggerall = power >= 90
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 10000)  && (movecontact)
trigger3 = (stateno = 1001)  && (movecontact)
trigger4 = (stateno = 1002)  && (movecontact)
trigger5 = stateno = 1500
;trigger2 = stateno = 3100
;trigger3 = (stateno = [200, 250]) && (movecontact)
;trigger3 = (stateno = 1300) && (movecontact)



;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Absorbcion
[State -1]
type = ChangeState
value = 1999
triggerall = command = "absorcion"
triggerall = numproj = 0
triggerall = power >= 1000
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1500

[State -1]
type = ChangeState
value = 1305
triggerall = command = "Super Combo"
triggerall = stateno != [1300,1302]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
;trigger2 = stateno = 98

[State -1]
type = ChangeState
value = 250
triggerall = command = "y"
triggerall = command != "Super Combo"
triggerall = command != "holddown"
triggerall = stateno != [1300,1302]
trigger1 = ctrl = 1
trigger1 = p2bodydist y < -32
trigger1 = statetype = S
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 210 && movecontact = 1
trigger4 = stateno = 230 && movecontact = 1
trigger5 = stateno = 240 && movecontact = 1
;---------------------------------------------------------------------------
; Combo
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Combo"
triggerall = power >= 500 ;1/2 Level
trigger1 = Statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 420
trigger10 = movecontact = 1
trigger11 = stateno = 430
trigger11 = movecontact = 1
trigger12 = stateno = 440
trigger12 = movecontact = 1
trigger13 = stateno = 3001
trigger14 = stateno = 1500

[State -1]
type = ChangeState
value = 1010
triggerall = command = "Combo2"
triggerall = power >= 500 ;1/2 Level
trigger1 = Statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 420
trigger10 = movecontact = 1
trigger11 = stateno = 430
trigger11 = movecontact = 1
trigger12 = stateno = 440
trigger12 = movecontact = 1
trigger13 = stateno = 3001
trigger14 = stateno = 1500

[State -1, ]
type = ChangeState
value = 805
triggerall = (command = "QCF_z")
trigger1 = (Stateno = 801) && (AnimElemTime(3) >= 0 && AnimElemTime(4) < 0)
;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 800
triggerall = (command = "holdfwd" || command = "holdback") && (command = "z") && (P2BodyDist X <= 10) && (P2Statetype = S) && (P2Movetype != H)
trigger1 = (ctrl) && (statetype = S)
;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 670
triggerall = (command = "c")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 660 || stateno = 661 || stateno = 610) && (movecontact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 660
triggerall = (command = "b")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 650 || stateno = 600 || stateno = 610 || stateno = 651) && (movecontact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 651
triggerall = (command = "a") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 650
triggerall = (command = "a") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 621
triggerall = (command = "z") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 610 || stateno = 660  || stateno = 661) && (movecontact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 620
triggerall = (command = "z") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 610 || stateno = 660  || stateno = 661) && (movecontact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 610
triggerall = (command = "y")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 650  || stateno = 651) && (movecontact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 600
triggerall = (command = "x")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =600) && (AnimElem = 2,>4)

;---------------------------------------------------------------------------

[State -1, ]
type = ChangeState
value = 470
triggerall = (command = "c") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 460 || stateno = 410) && (movecontact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 460
triggerall = (command = "a") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 450 || stateno = 400 || stateno = 410) && (movecontact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 450
triggerall = (command = "b") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 450) && (AnimElem = 2,>5 || MoveContact)
trigger3 = (stateno = 400) && (MoveContact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 420
triggerall = (command = "z") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 410 || stateno = 460) && (movecontact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 410
triggerall = (command = "y") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 400
triggerall = (command = "x") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (AnimElem = 2,>5 || MoveContact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 271
triggerall = (command = "c") && (command != "holddown") && (P2BodyDist X <= 3) && (P2Statetype = S)
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 260 || stateno = 210) && (movecontact)
trigger3 = stateno = 1500
;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 270
triggerall = (command = "c") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 260 || stateno = 210) && (movecontact)
trigger3 = stateno = 1500

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 260
triggerall = (command = "b")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 204) && (movecontact)
trigger3 = stateno = 1500

[State -1]
type = ChangeState
value = 204
triggerall = (command = "b") && (command != "holddown")
triggerall = movecontact
triggerall = stateno = 260
trigger1 = (statetype = S)
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 250
triggerall = (command = "a")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 203)  && (movecontact)
trigger2 = (stateno = 220) && (movecontact)
trigger3 = stateno = 1500

[State -1]
type = ChangeState
value = 203
triggerall = (command = "a")  && (command != "holddown")
triggerall = stateno = 250
triggerall = movecontact
trigger1 = (statetype = S)
trigger2 = stateno = 1500

[State -1]
type = ChangeState
value = 220
triggerall = (command = "a") && (command != "holddown")
triggerall = stateno = 203
triggerall = movecontact
trigger1 = (statetype = S)
trigger2 = stateno = 1500


;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 220
triggerall = (command = "z") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 210 || stateno = 260) && (movecontact)
trigger3 = stateno = 1500
;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 210
triggerall = (command = "y") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 250)  && (movecontact)
trigger2 = (stateno = 225) && (movecontact)
trigger3 = stateno = 1500

;Stand_y 2º
[State -1]
type = ChangeState
value = 225
triggerall = (command = "y") && (command != "holddown")
triggerall = stateno = 250
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 1500

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 1500

;Stand_x 2º
[State -1]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = stateno = 200
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = null;ChangeState
value = 100
trigger1 = (command = "FF") && (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;Hop Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = (command = "BB") && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;AirDash Fwd
[State -1, Fwd]
type = ChangeState
value = 60
trigger1 = (PrevStateNo != 45) && (command = "FF") && (statetype = A) && (ctrl) && (stateno = 50)
;---------------------------------------------------------------------------
;AirDash Back
[State -1, Back]
type = ChangeState
value = 65
trigger1 = (PrevStateNo != 45) && (command = "BB") && (statetype = A) && (ctrl) && (stateno = 50)
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
