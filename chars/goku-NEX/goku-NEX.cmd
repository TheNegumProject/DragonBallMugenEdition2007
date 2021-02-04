
;---------------------------------------------------------------------------
; dbzteam cmd file by Slayer (rossisambrana@yahoo.com.br)
;	come to "http://www.mugenable.f2s.com"
;              http://mugen4all.fws1.com
;---------------------------------------------------------------------------




;-| Super Motions |--------------------------------------------------------

[Command]
name = "UltimateCombo"
command = ~D, B, DB, z
time = 20

[Command]
name = "SuperTrunks"
command = ~D, F, DF, y 
time = 20

[Command]
name = "Vegeta"
command = ~D, B, F, z
time = 20

[Command]
name = "SSJ2"
command = ~D, B, F, x
time = 20

;[Command]
;name = "SSJ3"
;command = s
;time = 20

[Command]
name = "Genki-Dama"
command = ~D, F, DF, z
time = 20

[Command]
name = "Mestre-Kame"
command = ~D, B, DB, y
time = 20

[Command]
name = "Gohan"
command = ~D, B, DB, x
time = 20

[Command]
name = "agilidade"
command = ~D, F, DF, y
time = 20

[Command]
name = "Superkamehameha"
command = ~D, F, DF, x
time = 20


;-| Special Motions |------------------------------------------------------

[Command]
name = "sequencia"
command = ~D, B, y
time = 20

[Command]
name = "karate"
command = ~D, B, F, x
time = 20

[Command]
name = "joelhada"
command = ~D, B, F, y
time = 20

[Command]
name = "kamear"
command = ~D, F, y
time = 20

[Command]
name = "m-gohan"
command = b+y
time = 20

[Command]
name = "piccolo"
command = ~D, F, DF, a
time = 20

[Command]
name = "Trunks"
command = ~D, B, z
time = 20


[Command]
name = "triple"
command = ~D, F, y
time = 20

[Command]
name = "teleport"
command = c+x
time = 20

[Command]
name = "kamehameha"
command = ~D, F, z
time = 20

[Command]
name = "voar"
command = a+x
time = 20

[Command]
name = "kaioken"
command = D, F, DF, b
time = 20

[Command]
name = "fireball"
command = ~D, F, x
time = 20

[Command]
name = "kamerapido"
command = ~D, B, F, y
time = 20

[Command]
name = "3D"
command = b+y
time = 20


[Command]
name = "teleport"
command = x+y
time = 20

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "F,z"
command = /F,z
time = 1

[Command]
name = "B,z"
command = /B,z
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "DF_z"
command = /DF,z
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "DB_z"
command = /DB,z
time = 1

[Command]
name = "dodge"
command = /B,x+y
time = 1

[Command]
name = "knockdown"
command = a+b
time = 1

[Command]
name = "c+y"
command = c+y
time = 1


;-| Dir + Button |---------------------------------------------------------

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b

[Command]
name = "back_b"
command = /B,b

[Command]
name = "fwd_x"
command = /F,x

[Command]
name = "back_x"
command = /B,x

[Command]
name = "fwd_y"
command = /F,y

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "back_y"
command = /B,y

[Command]
name = "down_y"
command = /D, y

;-| Single Button |---------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "hold_c"
command = /c

[Command]
name = "x"
command = x
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "hold_z"
command = /$z

[Command]
name = "s"
command = s
time = 1

[Command]
name = "hold_s"
command = /s

[Command]
name = "charge"
command = /a
time = 1

[Command]
name = "charge1"
command = /b
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd_x"
command = /$F, x
time = 1

[Command]
name = "holdfwd_y"
command = /$F, y
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1
;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddiag1";Required (do not remove)
command = /$UF
time = 1

[Command]
name = "holddiag2";Required (do not remove)
command = /$UB
time = 1

[Command]
name = "holddiag3";Required (do not remove)
command = /$DF
time = 1

[Command]
name = "holddiag4";Required (do not remove)
command = /$DB
time = 1


;==========================================================================================
;จจจจจจจจจจจจจจจจจจจจจจจจจ
; Inteligencia Artificial
;จจจจจจจจจจจจจจจจจจจจจจจจจ

[Command]
name = "AI"
command = x,a,b, D, D, U, U, DD, UU, a+b, x, a
Time= 1

[Command]
name = "AI1"
command = x,c,a, D, D, U, U, DD, UU, c+b, x, a
Time= 1

[Command]
name = "AI2"
command = x,c,a, D, D, U, U, DD, UU, c+b, x, a
Time= 1

[Command]
name = "AI3"
command = y,b,a, D, D, U, U, DD, UU, x+y, x, a
Time= 1

[Command]
name = "AI4"
command = x,c,a, D, D, U, U, DD, UU, c+b, x, a
Time= 1

[Command]
name = "AI5"
command = c,c,b, D, D, U, U, DD, UU, y+b, x, a
Time= 1

[Command]
name = "AI6"
command = x,c,a, D, D, U, U, DD, UU, c+y, x, a
Time= 1

[Command]
name = "AI7"
command = a,b,c, D, D, U, U, DD, UU, c+b, x, a
Time= 1

[Command]
name = "AI8"
command = x,b,a, c, D, U, U, DD, UU, c+b, x, a
Time= 1

[Command]
name = "AI9"
command = x,c,a, D, D, U, U, DD, UU, c+b, x, a
Time= 1

[Command]
name = "AI10"
command = y,x,b, a, D, U, U, DD, UU, c+b, x, a
Time= 1

[Command]
name = "AI11"
command = y,x,b, a, D, B, U, DD, UU, c+b, x, a
Time= 1

[Command]
name = "AI12"
command = y,x,b, a, D, F, U, DD, UU, c+b, x, a
Time= 1

[Command]
name = "AI13"
command = y,x,b, a, D, c, U, DD, UU, c+b, x, a
Time= 1

[Command]
name = "AI14"
command = y,x,b, a, D, x, U, DD, UU, c+b, x, a
Time= 1





;-|Commands|------------------------------------------------------------------------------

[Statedef -1]

[State -1,AI] 
type = VarSet 
trigger1 = command = "AI" 
trigger2 = command = "AI1" 
trigger3 = command = "AI2" 
trigger4 = command = "AI3" 
trigger5 = command = "AI4" 
trigger6 = command = "AI5" 
trigger7 = command = "AI6" 
trigger8 = command = "AI7" 
trigger9 = command = "AI8" 
trigger10 = command = "AI9" 
trigger11 = command = "AI10" 
trigger12 = command = "AI11" 
trigger13 = command = "AI12" 
trigger14 = command = "AI13" 
trigger15 = command = "AI14" 
var(59) = 1 


[State -1, ---]
type = ChangeState
value = 6000
triggerall = command = "piccolo" && Var(9) = 0
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 205 || stateno = 209 || stateno = 215 || stateno = 230 || stateno = 240
trigger2 = movecontact = 1
trigger3 = stateno = 210 && movecontact = 1 && time < 8
trigger4 = hitdefattr = C, NA && movecontact = 1
trigger5 = stateno = 1900 && movecontact = 1

[State -1, ----]
type = ChangeState
value = 6555
triggerall = command = "m-gohan" && Var(9) = 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 205 || stateno = 209 || stateno = 215 || stateno = 230 || stateno = 240
trigger2 = movecontact = 1
trigger3 = stateno = 210 && movecontact = 1 && time < 8
trigger4 = hitdefattr = C, NA && movecontact = 1
trigger5 = stateno = 1900 && movecontact = 1


[State -1, ----]
type = ChangeState
value = 7921
triggerall = command = "piccolo" && numhelper(2222)>0
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 205 || stateno = 209 || stateno = 215 || stateno = 230 || stateno = 240
trigger2 = movecontact = 1
trigger3 = stateno = 210 && movecontact = 1 && time < 8
trigger4 = hitdefattr = C, NA && movecontact = 1
trigger5 = stateno = 1900 && movecontact = 1

;==================================================================================
;==================================================================================
;==================================================================================
;=======================================Goku Normal================================
;==================================================================================
;==================================================================================
;==================================================================================


;SSJ3
;[State -1]
;type = ChangeState
;value = 9001
;triggerall = command = "SSJ3" && Var(9) = 0
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger2 = stateno = 2000
;trigger3 = stateno = 200
;trigger3 = movecontact = 1
;trigger4 = stateno = 201
;trigger4 = movecontact = 1
;trigger5 = stateno = 202
;trigger5 = movecontact = 1
;trigger6 = stateno = 203
;trigger6 = movecontact = 1
;trigger7 = stateno = 204
;trigger7 = movecontact = 1
;trigger8 = stateno = 205
;trigger8 = movecontact = 1
;trigger9 = stateno = 1000
;trigger9 = movecontact = 1
;trigger10 = stateno = 1100
;trigger10 = movecontact = 1
;trigger12 = Pos Y = 0
;trigger12 = stateno = 1910
;trigger12 = movecontact = 1
;trigger13 = Pos Y = 0
;trigger13 = stateno = 5788
;trigger13 = movecontact = 1
;trigger14 = stateno = 5798
;trigger14 = movecontact = 1
;trigger14 = animtime = 0
;trigger15 = stateno = 6900
;trigger15 = movecontact = 1
;trigger16 = stateno = 4500
;trigger16 = movecontact = 1
;trigger17 = stateno = 3400
;trigger17 = movecontact = 1

;Goku มgil (agilidade)
[State -1]
type = ChangeState
value = 6900
triggerall = command = "agilidade" && Var(9) = 0 && power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1


;SuperTrunks
[State -1]
type = ChangeState
value = 7779
triggerall = command = "SuperTrunks" && Var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1

;UltimateCombo
[State -1]
type = ChangeState
value = 3400
triggerall = command = "UltimateCombo" && Var(9) = 0 && power >=3500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1

;UltimateCombo
[State -1]
type = ChangeState
value = 7712
triggerall = command = "UltimateCombo" && Var(9) = 1 && power >=3500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1

;Mestre Kame
[State -1]
type = ChangeState
value = 5798
triggerall = command = "Mestre-Kame" && Var(9) = 0 && power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1

;Vegeta
[State -1]
type = ChangeState
value = 8499
triggerall = command = "Vegeta" && Var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1

;Gohan
[State -1]
type = ChangeState
value = 5788
triggerall = command = "Gohan" && Var(9) = 0 && power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1


;Trunks
[State -1]
type = ChangeState
value = 7770
triggerall = command = "Trunks" && Var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1


;SSJ2
[State -1]
type = ChangeState
value = 9000
triggerall = command = "SSJ2" && Var(9) = 0 && VAr(40) !=1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1

;Superkamehameha
[State -1]
type = ChangeState
value = 4500
triggerall = command = "Superkamehameha" && Var(9) = 0 && power >= 1500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1
trigger18 =  stateno = 1900

;Superkamehameha
[State -1]
type = ChangeState
value = 2710
triggerall = command = "Superkamehameha" && Var(9) = 1 && power >= 1500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 11900
trigger3 = stateno = 10200
trigger3 = movecontact = 1
trigger4 = stateno = 10201
trigger4 = movecontact = 1
trigger5 = stateno = 10202
trigger5 = movecontact = 1
trigger6 = stateno = 204
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 206
trigger8 = movecontact = 1
trigger9 = stateno = 207
trigger9 = movecontact = 1
trigger10 = stateno = 208
trigger10 = movecontact = 1
trigger11 = Pos Y = 0
trigger11 = stateno = 210
trigger11 = movecontact = 1
trigger12 = Pos Y = 0
trigger12 = stateno = 211
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 212
trigger13 = movecontact = 1
trigger14 = stateno = 300
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 301
trigger15 = movecontact = 1
trigger16 = stateno = 302
trigger16 = movecontact = 1
trigger17 = stateno = 303
trigger17 = movecontact = 1
trigger18 =  stateno = 1900

;Genki-dama
[State -1]
type = ChangeState
value = 6500
triggerall = command = "Genki-Dama" && Var(9) = 0 && power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1

;Genki-dama
[State -1]
type = ChangeState
value = 6501
triggerall = command = "Genki-Dama" && Var(9) = 0 && power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1
trigger18 =  stateno = 1900

;kamehameha rapido
[State -1]
type = ChangeState
value = 1116
triggerall = command = "kamerapido" && Var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1
trigger18 =  stateno = 1900


;Genki-dama
[State -1]
type = ChangeState
value = 30700
triggerall = command = "Genki-Dama" && Var(9) = 1 && power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1

;Genki-dama
[State -1]
type = ChangeState
value = 30701
triggerall = command = "Genki-Dama" && Var(9) = 1 && power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 11900
trigger3 = stateno = 10200
trigger3 = movecontact = 1
trigger4 = stateno = 10201
trigger4 = movecontact = 1
trigger5 = stateno = 10202
trigger5 = movecontact = 1
trigger6 = stateno = 204
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 206
trigger8 = movecontact = 1
trigger9 = stateno = 207
trigger9 = movecontact = 1
trigger10 = stateno = 208
trigger10 = movecontact = 1
trigger11 = Pos Y = 0
trigger11 = stateno = 210
trigger11 = movecontact = 1
trigger12 = Pos Y = 0
trigger12 = stateno = 211
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 212
trigger13 = movecontact = 1
trigger14 = stateno = 300
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 301
trigger15 = movecontact = 1
trigger16 = stateno = 302
trigger16 = movecontact = 1
trigger17 = stateno = 303
trigger17 = movecontact = 1
trigger18 =  stateno = 1900

;Sequencia
[State -1]
type = ChangeState
value = 1910
triggerall = command = "sequencia" && Var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1

;kamehameha triplo
[State -1]
type = ChangeState
value = 1401
triggerall = command = "triple" && Var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1
trigger18 =  stateno = 1900

;kaioken
[State -1]
type = ChangeState
value = 1555
triggerall = command = "kaioken" && Var(9) = 0 && VAr(40) !=1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1
trigger18 =  stateno = 1900

;kamehameha fraco
[State -1]
type = ChangeState
value = 1100
triggerall = command = "kamehameha" && Var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1
trigger18 =  stateno = 1900

;kamehameha AR
[State -1]
type = ChangeState
value = 1114
triggerall = command = "kamear" && Var(9) = 1
trigger1 = statetype != S
trigger1 = ctrl = 1
trigger2 = stateno = 11900
trigger3 = stateno = 10200
trigger3 = movecontact = 1
trigger4 = stateno = 10201
trigger4 = movecontact = 1
trigger5 = stateno = 10202

;teleport
[State -1]
type = ChangeState
value = 910
triggerall = command = "teleport" && Var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900

;teleport
[State -1]
type = ChangeState
value = 10901
triggerall = command = "a" && Var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 11900

;Voar
[State -1]
type = ChangeState
value = 1800
triggerall = command = "c" && Var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;Voar
[State -1]
type = ChangeState
value = 11800
triggerall = command = "c" && Var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1


;fireball
[State -1]
type = ChangeState
value = 1000
triggerall = command = "fireball" && Var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1
trigger18 =  stateno = 1900

;3D
[State -1]
type = ChangeState
value = 900
triggerall = command = "3D" && Var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;3D
[State -1]
type = ChangeState
value = 10900
triggerall = command = "b" && Var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1

;Power UP
[State -1]
type = ChangeState
value = 500
triggerall = command = "charge" && command = "charge1" && Var(9) = 0
triggerall = Power < 5000 
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900

;Power UP
[State -1]
type = ChangeState
value = 10500
triggerall = command = "charge" && command = "charge1" && Var(9) = 1
triggerall = Power < 5000 
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 11900

; karate
[State -1]
type = ChangeState
value = 1115
triggerall = command = "karate" && Var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 11900
trigger3 = stateno = 10200
trigger3 = movecontact = 1
trigger4 = stateno = 10201
trigger4 = movecontact = 1
trigger5 = stateno = 10202
trigger5 = movecontact = 1
trigger6 = stateno = 204
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 206
trigger8 = movecontact = 1
trigger9 = stateno = 207
trigger9 = movecontact = 1
trigger10 = stateno = 208
trigger10 = movecontact = 1
trigger11 = Pos Y = 0
trigger11 = stateno = 210
trigger11 = movecontact = 1
trigger12 = Pos Y = 0
trigger12 = stateno = 211
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 212
trigger13 = movecontact = 1
trigger14 = stateno = 300
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 301
trigger15 = movecontact = 1
trigger16 = stateno = 302
trigger16 = movecontact = 1
trigger17 = stateno = 303
trigger17 = movecontact = 1
trigger18 =  stateno = 1900

; Standing light kick
[State -1]
type = ChangeState
value = 200
triggerall = command = "y" && Var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1
trigger18 =  stateno = 1900

; Standing light kick
[State -1]
type = ChangeState
value = 201
triggerall = command = "z" && Var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1
trigger18 =  stateno = 1900

; Standing light kick
[State -1]
type = ChangeState
value = 202
triggerall = command = "b" && Var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1
trigger18 =  stateno = 1900


; Standing light kick
[State -1]
type = ChangeState
value = 203
triggerall = command = "a" && Var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1
trigger18 =  stateno = 1900


; Standing light kick
[State -1]
type = ChangeState
value = 204
triggerall = command = "x" && Var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1
trigger18 =  stateno = 1900


; Standing light kick
[State -1]
type = ChangeState
value = 205
triggerall = command = "c" && Var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 203
trigger6 = movecontact = 1
trigger7 = stateno = 204
trigger7 = movecontact = 1
trigger8 = stateno = 205
trigger8 = movecontact = 1
trigger9 = stateno = 1000
trigger9 = movecontact = 1
trigger10 = stateno = 1100
trigger10 = movecontact = 1
trigger11 = stateno = 1401
trigger12 = Pos Y = 0
trigger12 = stateno = 1910
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 5788
trigger13 = movecontact = 1
trigger14 = stateno = 5798
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 6900
trigger15 = movecontact = 1
trigger16 = stateno = 4500
trigger16 = movecontact = 1
trigger17 = stateno = 3400
trigger17 = movecontact = 1
trigger18 =  stateno = 1900

; Standing light kick
[State -1]
type = ChangeState
value = 10200
triggerall = command = "x" && Var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 11900
trigger3 = stateno = 10200
trigger3 = movecontact = 1
trigger4 = stateno = 10201
trigger4 = movecontact = 1
trigger5 = stateno = 10202
trigger5 = movecontact = 1
trigger6 = stateno = 204
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 206
trigger8 = movecontact = 1
trigger9 = stateno = 207
trigger9 = movecontact = 1
trigger10 = stateno = 208
trigger10 = movecontact = 1
trigger11 = Pos Y = 0
trigger11 = stateno = 210
trigger11 = movecontact = 1
trigger12 = Pos Y = 0
trigger12 = stateno = 211
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 212
trigger13 = movecontact = 1
trigger14 = stateno = 300
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 301
trigger15 = movecontact = 1
trigger16 = stateno = 302
trigger16 = movecontact = 1
trigger17 = stateno = 303
trigger17 = movecontact = 1
trigger18 =  stateno = 1900

; Standing light kick
[State -1]
type = ChangeState
value = 10201
triggerall = command = "y" && Var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 11900
trigger3 = stateno = 10200
trigger3 = movecontact = 1
trigger4 = stateno = 10201
trigger4 = movecontact = 1
trigger5 = stateno = 10202
trigger5 = movecontact = 1
trigger6 = stateno = 204
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 206
trigger8 = movecontact = 1
trigger9 = stateno = 207
trigger9 = movecontact = 1
trigger10 = stateno = 208
trigger10 = movecontact = 1
trigger11 = Pos Y = 0
trigger11 = stateno = 210
trigger11 = movecontact = 1
trigger12 = Pos Y = 0
trigger12 = stateno = 211
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 212
trigger13 = movecontact = 1
trigger14 = stateno = 300
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 301
trigger15 = movecontact = 1
trigger16 = stateno = 302
trigger16 = movecontact = 1
trigger17 = stateno = 303
trigger17 = movecontact = 1
trigger18 =  stateno = 1900

; Standing light kick
[State -1]
type = ChangeState
value = 10202
triggerall = command = "z" && Var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 11900
trigger3 = stateno = 10200
trigger3 = movecontact = 1
trigger4 = stateno = 10201
trigger4 = movecontact = 1
trigger5 = stateno = 10202
trigger5 = movecontact = 1
trigger6 = stateno = 204
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 206
trigger8 = movecontact = 1
trigger9 = stateno = 207
trigger9 = movecontact = 1
trigger10 = stateno = 208
trigger10 = movecontact = 1
trigger11 = Pos Y = 0
trigger11 = stateno = 210
trigger11 = movecontact = 1
trigger12 = Pos Y = 0
trigger12 = stateno = 211
trigger12 = movecontact = 1
trigger13 = Pos Y = 0
trigger13 = stateno = 212
trigger13 = movecontact = 1
trigger14 = stateno = 300
trigger14 = movecontact = 1
trigger14 = animtime = 0
trigger15 = stateno = 301
trigger15 = movecontact = 1
trigger16 = stateno = 302
trigger16 = movecontact = 1
trigger17 = stateno = 303
trigger17 = movecontact = 1
trigger18 =  stateno = 1900

; Crouching hard kick
[State -1]
type = ChangeState
value = 400
triggerall = command = "x" && Var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1

; Crouching hard kick
[State -1]
type = ChangeState
value = 401
triggerall = command = "y" && Var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1

; Crouching hard kick
[State -1]
type = ChangeState
value = 402
triggerall = command = "b" && Var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1

; Crouching hard kick
[State -1]
type = ChangeState
value = 403
triggerall = command = "a" && Var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1

; Crouching hard kick
[State -1]
type = ChangeState
value = 401
triggerall = command = "z" && Var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1

; Crouching hard kick
[State -1]
type = ChangeState
value = 402
triggerall = command = "c" && Var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1

; Crouching hard kick
[State -1]
type = ChangeState
value = 10400
triggerall = command = "a" && Var(9) = 1
trigger1 = statetype = C
trigger1 = ctrl = 1

; Crouching hard kick
[State -1]
type = ChangeState
value = 10401
triggerall = command = "z" && Var(9) = 1
trigger1 = statetype = C
trigger1 = ctrl = 1

; Crouching hard kick
[State -1]
type = ChangeState
value = 10402
triggerall = command = "c" && Var(9) = 1
trigger1 = statetype = C
trigger1 = ctrl = 1

; Crouching hard kick
[State -1]
type = ChangeState
value = 10400
triggerall = command = "y" && Var(9) = 1
trigger1 = statetype = C
trigger1 = ctrl = 1

; Crouching hard kick
[State -1]
type = ChangeState
value = 10401
triggerall = command = "x" && Var(9) = 1
trigger1 = statetype = C
trigger1 = ctrl = 1

; Crouching hard kick
[State -1]
type = ChangeState
value = 10402
triggerall = command = "b" && Var(9) = 1
trigger1 = statetype = C
trigger1 = ctrl = 1

; Jumping light punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x" && Var(9) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping light punch
[State -1]
type = ChangeState
value = 601
triggerall = command = "b" && Var(9) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping light punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "z" && Var(9) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping light punch
[State -1]
type = ChangeState
value = 601
triggerall = command = "c" && Var(9) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping light punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "y" && Var(9) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping light punch
[State -1]
type = ChangeState
value = 601
triggerall = command = "a" && Var(9) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1



;
; Jumping light punch
[State -1]
type = ChangeState
value = 10600
triggerall = command = "x" && Var(9) = 1
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping light punch
[State -1]
type = ChangeState
value = 10601
triggerall = command = "b" && Var(9) = 1
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping light punch
[State -1]
type = ChangeState
value = 10600
triggerall = command = "z" && Var(9) = 1
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping light punch
[State -1]
type = ChangeState
value = 10601
triggerall = command = "c" && Var(9) = 1
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping light punch
[State -1]
type = ChangeState
value = 10600
triggerall = command = "y" && Var(9) = 1
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping light punch
[State -1]
type = ChangeState
value = 10601
triggerall = command = "a" && Var(9) = 1
trigger1 = statetype = A
trigger1 = ctrl = 1

; Taunt
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s" && Var(9) = 0
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1


; Taunt
[State -1]
type = ChangeState
value = 10195
trigger1 = command = "s" && Var(9) = 1
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Run Forward
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1


; Run Backwards
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1


