
;agradeço ao bardock por ter me ajudado e se quiserem 
;copiar algo copiem , afinal a sociedade só chegou aqui
;porque as pessoas criam e outras criam em cima do que
;os outros criaram e assim sucessivamente..  

;-| Super Motions |--------------------------------------------------------

[Command]
name = "CHOUGENKIDAMA" ;ataca
command = x
time = 1

[Command]
name = "CHOU"
command = /z
time = 1 

[Command]
name = "GENKIDAMA"
command = /c
time = 1


[Command]
name = "Hyper1"     ;Required (do not remove)
command = ~D,DB,B,D,DB,B,x
time = 25

[Command]
name = "Hyper1"     ;Required (do not remove)
command = ~D,DB,B,D,DB,B,y
time = 25

[Command]
name = "Hyper1"     ;Required (do not remove)
command = ~D,DB,B,D,DB,B,z
time = 25


[Command]
name = "combo 3"
command = ~D,DF,F,D,DF,F,x
time = 30

[Command]
name = "combo 3"
command = ~D,DF,F,D,DF,F,y
time = 30

[Command]
name = "combo 3"
command = ~D,DF,F,D,DF,F,z
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "kamehameha"
command = a+b
time = 30

[Command]
name = "kamehameha"
command = ~D,DF,F,D,DF,F,b
time = 30

[Command]
name = "kamehameha"
command = ~D,DF,F,D,DF,F,c
time = 30

[Command]
name = "kamehameha2"
command = ~D, DB, B, F, a
time = 35

[Command]
name = "kamehameha2"
command = ~D, DB, B, F, b
time = 35

[Command]
name = "kamehameha2"
command = ~D, DB, B, F, c
time = 35

[Command]
name = "power"
command = ~D, DB, B, F, x
time = 35

[Command]
name = "power"
command = ~D, DB, B, F, y
time = 35

[Command]
name = "power"
command = ~D, DB, B, F, z
time = 35

[Command]
name = "Kick combo"
command = ~D, DB, B, a
time = 30

[Command]
name = "combo"
command = ~D, DB, B, b

[Command]
name = "combo2"
command = ~D, DB, B, c

[Command]
name = "mega_block"
command = a
time = 50~

[Command]
name = "mega_block"
command = b
time = 50

[Command]
name = "mega_block"
command = c
time = 50


[Command]
name = "sequencia"
command = D, DF, F, x
time = 30

;[Command]
;name = "sequencia2"
;command = D, DF, F, a
;time = 30

[Command]
name = "sequencia1"
command = D, DF, F, b
time = 30


[Command]
name = "fly"
command = b+y
time = 30

[Command]
name = "teleport"
command = s

[Command]
name = "fire_ball"
command = ~B, F, x

[Command]
name = "fire_ball"
command = ~B, F, y

[Command]
name = "fire_ball"
command = ~B, F, z

[Command]
name = "Kamecima"
command = ~B, F, a

[Command]
name = "Kamecima"
command = ~B, F, b

[Command]
name = "Kamecima"
command = ~B, F, c

;[Command]; 
;name = "st"
;command = D, DF, F, c
;time = 30

[Command]
name = "meteor1"
command = ~z,z,z
time = 30

[Command]
name = "meteor2"
command = ~a,a,a
time = 30

[Command]
name = "combo 1"
command = ~D,B, x

[Command]
name = "combo 1"
command = ~D,B, y

[Command]
name = "combo 1"
command = ~D,B, z



;-| Double Tap |-----------------------------------------------------------

[Command]
name="Super Jump"
command=~D,U


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

[Command]
name = "chute_b"
command = /F, b
time = 1

[Command]
name = "chute_c"
command = /F, c
time = 1

[Command]
name = "holdy"
command = /$y
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
name = "chutes"
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
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
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
name = "charge"
command = /x

[Command]
name = "charge 1"
command = /a

[Command]
name = "ufire"
command = /UF
time = 1

[Command]
name = "dfire"
command = /DF
time = 1

[Command]
name = "bufire"
command = /UB
time = 1

[Command]
name = "bdfire"
command = /DB
time = 1

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
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
name = "holds";Required (do not remove)
command = /s
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;----------------------------------------------
;Super Salto
[State -1,SJ]
type=ChangeState
value=707
triggerall=var(59)=0
triggerall=command="Super Jump"
triggerall=alive
triggerall=pos y>=0
triggerall=!win
trigger1=(statetype!=A&&ctrl)

;=======================================================

[State -1]
type = ChangeState
value = 3400
triggerall = command = "CHOU"
triggerall = command = "GENKIDAMA"
triggerall = Var(5) < 1000

triggerall = Var(0) = 0
triggerall = Var(10) = 0;’´ƒTƒCƒ„l‚¶‚á‚È‚¢
trigger1 = statetype = S
trigger1 = ctrl

;=======================================================

;’´Œ³‹C‹Ê”­ŽË
[State -1]
type = ChangeState
value = 3450
triggerall = command = "CHOUGENKIDAMA"
triggerall = Var(5) >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;=======================================================

; IN AIR BY OZARUGOTEN
[State -1]
type = ChangeState
value = 3400
triggerall = command = "CHOU"
triggerall = command = "GENKIDAMA"
triggerall = Var(5) < 1000
triggerall = Var(0) = 0
triggerall = Var(10) = 0;’´ƒTƒCƒ„l‚¶‚á‚È‚¢
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;=======================================================

;’´Œ³‹C‹Ê”­ŽË IN AIR BY OAZARU GOTEN
[State -1]
type = ChangeState
value = 3450
triggerall = command = "CHOUGENKIDAMA"
triggerall = Var(5) >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1500


;Kikkoken_X
[State -1]
type = ChangeState
value = 3000
triggerall = palno < 11
triggerall = command = "Hyper1" && power >= 3000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;=======================================================
; Sequencia de socos
[State -1]
type = ChangeState
value = 8747
triggerall = command = "combo"
trigger1 = statetype = S
trigger1 = ctrl = 1

;=======================================================

; Cutuvelada seguida de sequencia
[State -1]
type = ChangeState
value = 1122
triggerall = command = "combo2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger19 = stateno = 5071

;=======================================================

;combo
[State -1]
type = changestate
value = 527
triggerall = command = "combo 3"
triggerall = power >= 2000 ;Level 2
trigger1 = p2BodyDist  X < 200
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;=======================================================

; Kamehameha
[State -1]
type = ChangeState
value = 1751
triggerall = command = "kamehameha2"
triggerall = power >= 2000 ;Level 2 Super
triggerall = stateno != 1700 
triggerall = numprojid(1700) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = statetype != A
trigger3 = hitdefattr = SC, NA, SA 
trigger3 = movecontact = 1

;=======================================================

; power
[State -1]
type = ChangeState
value = 5555
triggerall = command = "power"
triggerall = power >= 1000 ;Level 1 Super
triggerall = stateno != 1700 
triggerall = numprojid(1700) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = statetype != A
trigger3 = hitdefattr = SC, NA, SA 
trigger3 = movecontact = 1

;=======================================================

;Kick combo
[State -1]
type = changestate
value = 8
triggerall = command = "Kick combo"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510
triggerall = stateno != 101
triggerall = stateno != 103

;=======================================================

;Mega block
[State -1]
type = ChangeState
value = 1400
triggerall = command = "mega_block"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl = 1

;=======================================================

;Attack Sequence(socos)
[State -1]
type = ChangeState
value = 1200
triggerall = command = "sequencia"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;=======================================================

;Attack Sequence (Chutes)
;[State -1]
;type = ChangeState
;value = 1300
;triggerall = command = "sequencia2"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger2 = stateno = 1500

;=======================================================

;Attack Sequence1
[State -1]
type = ChangeState
value = 10000
triggerall = command = "sequencia1"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;=======================================================

[State -1]
type = ChangeState
value = 2500
triggerall = command = "kamehameha"
triggerall = var(6) = 0
triggerall = numproj = 0
triggerall = power > 100
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;=======================================================

;Fly
[State -1]
type = ChangeState
value = 1500
triggerall = var(9) = 0 || var(9) = 1
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1


;Fly
[State -1]
type = ChangeState
value = 1510
triggerall = var(9) = 0 || var(9) = 1
triggerall = command = "fly"
trigger1 = statetype != A
trigger1 = ctrl = 1

;=======================================================

;Teleport
[State -1]
type = ChangeState
value = 2000
triggerall = var(9) = 0 || var(9) = 1
triggerall = command = "teleport"
triggerall = var(9) = 0
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;========================================================
;Fire ball
[State -1]
type = ChangeState
value = 7025
triggerall = var(6) = 0
triggerall = command = "fire_ball"
triggerall = numproj = 0
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1500


;Fire Ball 1
[State -1]
type = changestate
value = 7026
triggerall = command = "x"
triggerall = power >= 1
triggerall = Time > 10
trigger1 = stateno = 7025

;Fire Ball 2
[State -1]
type = changestate
value = 7025
triggerall = command = "x"
triggerall = power >= 1
triggerall = Time > 10
trigger1 = stateno = 7026

;Fire Ball 1
[State -1]
type = changestate
value = 7026
triggerall = command = "y"
triggerall = power >= 1
triggerall = Time > 10
trigger1 = stateno = 7025

;Fire Ball 2
[State -1]
type = changestate
value = 7025
triggerall = command = "y"
triggerall = power >= 1
triggerall = Time > 10
trigger1 = stateno = 7026


Fire Ball 1
[State -1]
type = changestate
value = 7026
triggerall = command = "z"
triggerall = power >= 1
triggerall = Time > 10
trigger1 = stateno = 7025

Fire Ball 2
[State -1]
type = changestate
value = 7025
triggerall = command = "z"
triggerall = power >= 1
triggerall = Time > 10
trigger1 = stateno = 7026

;==============================================


[State -1, miniKamehameha]
type = ChangeState
value = 822
triggerall = command = "Kamecima"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 250
trigger4 = movecontact = 1
trigger4 = stateno = 260
trigger5 = movecontact = 1
trigger5 = stateno = 270
trigger6 = movecontact = 1
trigger6 = stateno = 280
trigger7 = movecontact = 1
trigger7 = stateno = 290
trigger8 = movecontact = 1
trigger8 = stateno = 220
trigger9 = movecontact = 1
trigger9 = stateno = 230
trigger10 = movecontact = 1
trigger10 = stateno = 240
trigger11 = movecontact = 1
trigger11 = stateno = 850
trigger12 = movecontact = 1
trigger12 = stateno = 860
trigger13 = stateno = 8000

;=====================================================

;Sequencia 
;[State -1]
;type = ChangeState
;value = 1449
;triggerall = var(6) = 0
;triggerall = command = "st"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger2 = stateno = 1500

;=====================================================

; Meteor Atack 1
[State -1]
type = ChangeState
value = 1234
triggerall = command = "meteor1"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3100
trigger2 = movecontact = 1
trigger3 = stateno = 3400
trigger3 = movecontact = 1
trigger4 = stateno = 1700
trigger4 = movecontact = 1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 215
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 210
trigger8 = movecontact = 1

;=====================================================

; Meteor Atack 2
[State -1]
type = ChangeState
value = 1235
triggerall = command = "meteor2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3100
trigger2 = movecontact = 1
trigger3 = stateno = 3400
trigger3 = movecontact = 1
trigger4 = stateno = 1700
trigger4 = movecontact = 1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 215
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 210
trigger8 = movecontact = 1

;=====================================================

;Combo Sequence 1
[State -1]
type = changestate
value = 1059
triggerall = command = "combo 1"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1

;States]=============================================

;Velocidade
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Velocidade Hit
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
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


;Velocidade Traz
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Velocidade Hit
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
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

;=====================================================

;Chute forte
[State -1]
type = ChangeState
value = 213
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "chute_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 213
trigger2 = time >= 20
trigger3 = stateno = 214
trigger3 = movecontact = 1
trigger4 = stateno = 100
trigger4 = movecontact =1
trigger5 = stateno = 105
trigger5 = movecontact = 1
trigger6 = stateno = 200
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1
trigger8 = stateno = 201
trigger8 = movecontact = 1
trigger9 = stateno = 211
trigger9 = movecontact = 1
trigger10 = stateno = 1500

;=====================================================

;Stand_x
[State -1]
type = ChangeState
value = 200
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time >= 20
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 202
trigger4 = movecontact =1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 211
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1
trigger8 = stateno = 1500


;Stand_x 2º
[State -1]
type = ChangeState
value = 220
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "x"
triggerall = stateno = 200
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

;Stand_x 3º
[State -1]
type = ChangeState
value = 222
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "x"
triggerall = stateno = 220
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
;Stand_y
[State -1]
type = ChangeState
value = 201
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time >= 20
trigger3 = stateno = 202
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 211
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1
trigger8 = stateno = 1500

;Stand_y 2º
[State -1]
type = ChangeState
value = 222
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "y"
triggerall = stateno = 201
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

;Stand_y 3º
[State -1]
type = ChangeState
value = 217
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "y"
triggerall = stateno = 222
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

;Stand_z
[State -1]
type = ChangeState
value = 202
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = time >= 20
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact =1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 211
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1
trigger7 = stateno = 2690
trigger7 = movecontact = 1

;Stand_z 2º
[State -1]
type = ChangeState
value = 203
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "z"
triggerall = stateno = 202
triggerall = movecontact = 1
trigger1 = statetype = S

;Stand_a
[State -1]
type = ChangeState
value = 210
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = time >= 20
trigger3 = stateno = 211
trigger3 = movecontact = 1
trigger4 = stateno = 212
trigger4 = movecontact =1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 202
trigger7 = movecontact = 1
trigger8 = stateno = 1500

;Stand_a 2º
[State -1]
type = ChangeState
value = 230
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "a"
triggerall = stateno = 210
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

;Stand_a 3º
[State -1]
type = ChangeState
value = 231
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "a"
triggerall = stateno = 230
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

;Stand_b
[State -1]
type = ChangeState
value = 211
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 211
trigger2 = time >= 20
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 212
trigger4 = movecontact =1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 202
trigger7 = movecontact = 1
trigger8 = stateno = 1500

;Stand_a 2º
[State -1]
type = ChangeState
value = 250
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "b"
triggerall = stateno = 211
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

;Stand_a 3º
[State -1]
type = ChangeState
value = 251
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "b"
triggerall = stateno = 250
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

;Stand_c
[State -1]
type = ChangeState
value = 212
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 212
trigger2 = time >= 20
trigger3 = stateno = 211
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact =1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 2692
trigger7 = movecontact = 1
trigger8 = stateno = 1500

;Stand_a 2º
[State -1]
type = ChangeState
value = 215
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "c"
triggerall = stateno = 212
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

Stand_a 3º
[State -1]
type = ChangeState
value = 216
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "c"
triggerall = stateno = 215
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500


;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time >= 20
trigger3 = stateno = 430
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time >= 20
trigger3 = stateno = 430
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(6)= 0 || var(6)= 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time >= 20
trigger3 = stateno = 430
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(6)= 0 || var(6)= 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = time >= 20
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(6)= 0 || var(6)= 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = time >= 20
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(6)= 0 || var(6)=1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = time >= 20
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(6)= 0 || var(6)= 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time >= 20
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 640
trigger4 = movecontact =1

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 650
triggerall = var(6)= 0 || var(6)= 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = time >= 20
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 640
trigger4 = movecontact =1

[State -1, Jump Light Kick]
type = ChangeState
value = 640
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = stateno = 1500


;Fire ball
;[State -1]
;type = ChangeState
;value = 7040
;triggerall = var(6) = 0
;triggerall = command = "z"  ;secret
;triggerall = numproj = 0
;trigger1 = statetype = A
;trigger1 = ctrl 
;trigger2 = stateno = 1500

[State -1]
type = ChangeState
value = 100
triggerall = var(6) = 0
triggerall = command = "z"
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = stateno = 1500

;Fire Ball 1
[State -1]
type = changestate
value = 7041
triggerall = command = "z"
triggerall = power >= 1
triggerall = Time > 10
trigger1 = stateno = 7040
trigger2 = stateno = 610
trigger2 = time >= 20
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 640
trigger4 = movecontact =1

;Fire Ball 2
[State -1]
type = changestate
value = 7040
triggerall = command = "z"
triggerall = power >= 1
triggerall = Time > 10
trigger1 = stateno = 7041
trigger2 = stateno = 610
trigger2 = time >= 20
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 640
trigger4 = movecontact =1



;---------------------------------------------------------------------------
;Jump Light Kick


;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640
trigger2 = time >= 20
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 620
trigger4 = movecontact =1

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640
trigger2 = time >= 20
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 600
trigger4 = movecontact =1

;Charge
[State -1]
type = ChangeState
value = 730
triggerall = ctrl = 1
triggerall != var(6) = 0
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = statetype = S

;Air Charge
[State -1]
type = ChangeState
value = 731
trigger1 = ctrl = 0
triggerall != var(6) = 0
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = stateno = 1500


