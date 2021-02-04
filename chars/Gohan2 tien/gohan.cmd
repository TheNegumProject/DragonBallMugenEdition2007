



IA;

[Command]
name = "CPU_1"
command = F, F, F, F, F, F
time = 1

[Command]
name = "CPU_2"
command = b, b, b, b, b, b
time = 1

[Command]
name = "CPU_3"
command = D, U, D, U, D, U 
time = 1

[Command]
name = "CPU_4"
command = a, b, b, a, a, b 
time = 1

[Command]
name = "CPU_5"
command = y, y, y, y, y, y 
time = 1

[Command]
name = "CPU_6"
command = x, a, x, a, x, a 
time = 1

[Command]
name = "CPU_7"
command = B, B, B, B, B, B
time = 1


[Command]
name = "CPU_8"
command = z, z, z, z, z 
time = 1

[Command]
name = "CPU_9"
command = c, c, c, c, c, c 
time = 1


[Command]
name = "CPU_10"
command = ~D, B, F, a
time = 1

[Command]
name = "CPU_11"
command = ~D, B, a
time = 1

[Command]
name = "CPU_12"
command = ~D, B, F, b
time = 1

[Command]
name = "CPU_13"
command = ~D, DB, B, y
time = 1

[Command]
name = "CPU_14"
command = ~D, DB, B, x
time = 1


[Command]
name = "CPU_15"
command = ~F, DF, F, y
time = 1


[Command]
name = "CPU_16"
command = ~D, F, y
time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "brutality"    
command = s
time = 100

[Command]
name = "FATALITY"
command = D, DF, F, D, DF, F, a
time = 30

[Command]
name = "combo 4"
command = ~D, B, F, a

[Command]
name = "combo 5"
command = ~D, B, a


;-| Special Motions |------------------------------------------------------


[Command]
name = "counter attack"
command = s
time = 20

[Command]
name = "kick"
command = B, a

[Command]
name = "kick2"
command = B, b

[Command]
name = "kick3"
command = B, c

[Command]
name = "rafagas de puños A"
command = x, x


[Command]
name = "rafagas de puños B"
command = y, y



[Command]
name = "combos consecutivos"
command = D,F, x

[Command]
name = "patadas consecutivas"
command = D,F, a


[Command]
name = "patadaerea"
command = D, b

[Command]
name = "patadaerea2"
command = D, a


[Command]
name = "fireball"
command = ~D, F, y

[Command]
name = "fireball2"
command = s


; take
[Command]
name = "take"
command = ~D, B, F, b
time = 30

; take
[Command]
name = "take1"
command =~D, B, F, b
time = 30


[Command]
name = "combo 2"
command = ~D, DB, B, y
time = 30


[Command]
name = "combo 1"
command = ~D, DB, B, x

[Command]
name = "TELETRANSPORTACION + CODAZO"
command = ~F, DF, F, y


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

[Command]
name = "ab"
command = a+x
time = 5

[Command]
name = "fly"
command = b+y
time = 1

[Command]
name = "counter"
command = D, B, D, B
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
name = "down_y"
command = c
time = 1

;-| Single Button |---------------------------------------------------------


[Command]
name = "rafagas de puños A"
command = B, x
time = 1

[Command]
name = "rafagas de puños B"
command = B, y
time = 1


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
name = "fire_ball"
command = z
time = 30

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
command = /a

[Command]
name = "charge 1"
command = /x

[Command]
name = "hold_z"
command = /$z
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

;===========================================================================

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

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;RunFwd( CORRER ATRAS)
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
;RunBack( CORRER ATRAS)
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
;Kung Fu Throw
;“Š‚°
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "combo 1"
triggerall = command != "combos consecutivos"
triggerall = command != "rafagas de puños A"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
ignorehitpause = 1

[State -1, 2nd Puño x]
type = ChangeState
value = 202
triggerall = alive = 1  && command = "x" && stateno = 201 && movecontact 
trigger1 = statetype = S

[State -1, 3nd Puño x]
type = ChangeState
value = 207
triggerall = alive = 1  && command = "x" && stateno = 202 && movecontact 
trigger1 = statetype = S

;---------------------------------------------------------------------------
;rafagas de puños A
[State -1, Stand Light Punch]
type = ChangeState
value = 207
triggerall = command = "rafagas de puños A"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------

;Stand Light Punch air
[State -1, Stand Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
ignorehitpause = 1

;---------------------------------------------------------------------------
;Stand Strong Punch
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "fly"
triggerall = command != "combo 2"
triggerall = command != "TELETRANSPORTACION + CODAZO"
triggerall = command != "fireball"
triggerall = command != "rafagas de puños B"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
ignorehitpause = 1


[State -1, 2nd Puño Y]
type = ChangeState
value = 203
triggerall = alive = 1  && command = "y" && stateno = 210 && movecontact 
trigger1 = statetype = S

[State -1, 3nd Puño Y]
type = ChangeState
value = 208
triggerall = alive = 1  && command = "y" && stateno = 203 && movecontact 
trigger1 = statetype = S

;---------------------------------------------------------------------------
;rafagas de puños B
[State -1, Stand Light Punch]
type = ChangeState
value = 208
triggerall = command = "rafagas de puños B"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "combo 4"
triggerall = command != "combo 5"
triggerall = command != "FATALITY"
triggerall = command != "kick"
triggerall = command != "patadas consecutivas"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 8

[State -1, 2nd Patada A]
type = ChangeState
value = 231
triggerall = alive = 1  && command = "a" && stateno = 230 && movecontact 
trigger1 = statetype = S

[State -1, 3ra patada A]
type = ChangeState
value = 206
triggerall = alive = 1  && command = "a" && stateno = 231 && movecontact 
trigger1 = statetype = S

;---------------------------------------------------------------------------
; Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 270
triggerall = command = "kick"
triggerall = command != "holddown"
triggerall = command != "combo 4"
triggerall = command != "combo 5"
triggerall = command != "FATALITY"
time = 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
ignorehitpause = 1

;---------------------------------------------------------------------------


;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "fly"
triggerall = command != "take"
triggerall = command != "take1"
triggerall = command != "kick2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
ignorehitpause = 1

;kick 2
[State -1, Standing Strong Kick]
type = ChangeState
value = 280
triggerall = command = "kick2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
ignorehitpause = 1

;---------------------------------------------------------------------------
; Standing high Kick
[State -1, Standing high Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = command != "kick3"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
ignorehitpause = 1

[State -1, 2da patada C]
type = ChangeState
value = 212
triggerall = alive = 1  && command = "c" && stateno = 250 && movecontact 
trigger1 = statetype = S

; Kick 3
[State -1, Standing high Kick]
type = ChangeState
value = 281
triggerall = command =  "kick3"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 1

;----------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = null; ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
ignorehitpause = 1

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
ignorehitpause = 1

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
ignorehitpause = 1

; A2_Strong Punch
[State -1, 2nd Punch X]
type = ChangeState
value = 440
triggerall = alive = 1  && command = "a" && stateno = 430 && movecontact = 1
trigger1 = statetype = C


;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 431
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
ignorehitpause = 1

; A2_Strong Punch
[State -1, 2nd Punch X]
type = ChangeState
value = 440
triggerall = alive = 1  && command = "a" && stateno = 431 && movecontact = 1
trigger1 = statetype = C



;---------------------------------------------------------------------------

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && MoveContact
trigger2 = statetime >= 5
trigger3 = (stateno = 641) && time > 6
trigger4 = (stateno = 640) && time > 7
trigger5 = (stateno = 630) && time > 8
ignorehitpause = 1

; A2_Strong Punch
[State -1, 2nd Punch X]
type = ChangeState
value = 612
triggerall = alive = 1  && command = "x" && stateno = 600 && movecontact = 1
trigger1 = statetype = A

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
trigger3 = (stateno = 630) && time > 6
trigger4 = (stateno = 640) && time > 7
trigger5 = (stateno = 641) && time > 8
trigger6 = (stateno = 611) && time > 9
ignorehitpause = 1

; A2_Strong Punch
[State -1, 2nd Punch X]
type = ChangeState
value = 612
triggerall = alive = 1  && command = "y" && stateno = 610 && movehit = 1
trigger1 = statetype = A
;-----------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = null;ChangeState
value = 611
triggerall = command = "z"
triggerall = command != "fire_ball"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 641) && time > 5
trigger3 = (stateno = 640) && time > 6
trigger4 = (stateno = 600) && time > 7
trigger5 = (stateno = 611) && time > 8
trigger6=  (stateno = 610) && time > 9
ignorehitpause = 1

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 641
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 630) && time > 5
trigger3 = (stateno = 640) && time > 6
trigger4 = (stateno = 600) && time > 7
trigger5 = (stateno = 610) && time > 8
trigger6 = (stateno = 611) && time > 9
ignorehitpause = 1

; A2_Strong Punch
[State -1, 2nd Punch X]
type = ChangeState
value = 631
triggerall = alive = 1  && command = "a" && stateno = 641 && movehit = 1
trigger1 = statetype = A
;-------------------------------------------------------------------------
;Jump high Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 
trigger2 = movecontact

;Cargar
[State -1]
type = ChangeState
value = 730
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = statetype = S



;standing Gancho
[state -1, UPA Punch]
type = changestate
value = 275
triggerall = command = "ab"
trigger1 = ((ctrl) && (statetype = S))
trigger2 = ((stateno = 200) && (animelem = 2, >3))
trigger3 = ((stateno = 201) && (animelem = 2, >3))
trigger4 = ((stateno = 203) && (animelem = 2, >3))
trigger5 = ((stateno = 205) && (animelem = 2, >3))
trigger6 = stateno = 900
ignorehitpause = 1

;Mazazo aereo
[state -1, DB Smash]
type = changestate
value = 450
triggerall = command = "down_y"
trigger1 = ((ctrl) && (statetype = A) && (command! = "holddown"))
trigger2 = ((stateno = 400) && (animelem = 2, >1))
trigger3 = ((stateno = 401) && (animelem = 2, >1))
trigger4 = ((stateno = 405) && (animelem = 2, >1))
trigger5 = ((stateno = 410) && (animelem = 2, >1))
trigger6 = ((stateno = 411) && (animelem = 2, >1))
trigger7 = ((stateno = 415) && (animelem = 2, >1))
trigger8 = ((stateno = 100) && (animelem = 2, >8))
ignorehitpause = 1

;Combo Sequence 1
[State -1]
type = changestate
value = 1059
triggerall = command = "combo 1"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1

;Combo Sequence 2
[State -1]
type = changestate
value = 1155
triggerall = command = "combo 2"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1

;TELETRANSPORTACION + CODAZO!!!
[State -1]
type = changestate
value = 233
triggerall = command = "TELETRANSPORTACION + CODAZO"
trigger1 = statetype = S
trigger1 = ctrl 

;Combo Sequence 6
[State -1]
type = changestate
value = 1162
triggerall = command = "combo 4"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1

;Combo Sequence 
[State -1]
type = changestate
value = 1182
triggerall = command = "combo 5"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1

; Aerial kick ( en  aire )
[State -1]
type = ChangeState
value = 1850
triggerall = command = "patadaerea2"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 1900
ignorehitpause = 1



;Fire Ball
[State -1]
type = ChangeState
value = 700
triggerall = power >= 1
triggerall = command = "fire_ball"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1




;Patada aerea
[State -1: 		Triangle Kick]
type 			= ChangeState
value 		= 1030
triggerall 		= (Command = "patadaerea")
trigger1		= ((StateType = A) && (Ctrl))
ignorehitpause = 1

FINISH HIM
[State -1]
type = Changestate
trigger1 = ctrl 
trigger1 = P2Life <= 1 
trigger1 = NumHelper(9010) = 0
trigger1 = P2StateNo != 003
trigger1 = RoundNo != 1
trigger1 = var(58) >= 1
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)
value = 9000 


BRUTALITY
[State -1]
type = Changestate
value = 8550
triggerall = P2Life = 1
triggerall = NumHelper(9010) = 1
triggerall = enemy(0), stateno = 003
triggerall = RoundNo != 1
triggerall = var(58) >= 1
trigger1 = command = "brutality"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = P2BodyDist X >= 60
trigger1 = p2Dist X <= 300

;take
[State -1]
type = changestate
value = 10050
triggerall = p2bodydist x <= 120 
triggerall = command = "take"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510
triggerall = p2stateno != [5000,5300]
ignorehitpause = 1
;----;---------------------------------------------------------------------------
;take
[State -1]
type = changestate
value = 10050
;triggerall = p2bodydist x <= 120 
triggerall = command = "take1"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510
triggerall = p2stateno != [5000,5300]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1114 ;numero do fire ball no cns 
triggerall = command = "fireball2"; nome do comand acima 
trigger1 = statetype = A ; pode ser tambem A , no ar , ou C abaixado
trigger1 = Power >= 1000
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1111 ;numero do fire ball no cns 
triggerall = command = "fireball"; nome do comand acima 
trigger1 = statetype = S ; pode ser tambem A , no ar , ou C abaixado
trigger1 = Power >= 1000
trigger1 = ctrl = 1

[State -1, Fatality]
type = Changestate
trigger1 = ctrl ;EL PERSONAJE DEBE TENER EL CONTROL 
trigger1 = P2Life = 1 ;Vida del oponente debe ser igual a 1.
trigger1 = NumHelper(7000) = 1 ;Debe haber pelo menos 1 helper invisível na tela.
trigger1 = P2StateNo = 003 ;el Oponente debe estar en ese state.
trigger1 = RoundNo != 1 ;Round no puede ser el  primero.
trigger1 = var(58) >= 1 ;el char debe vencer, como mínimo, un round antes.
trigger1 = command = "FATALITY" ; comando para que el fatality sea ejecutado.
trigger1 = statetype = S ;el char debe estar de pie.
trigger1 = (p2statetype = S) || (p2statetype = C) ;P2 no  puede estar volando.
value = 3199


[State -1]
type = VarSet
trigger1 = command = "CPU_1"
trigger2 = command = "CPU_2"
trigger3 = command = "CPU_3"
trigger4 = command = "CPU_4"
trigger5 = command = "CPU_5"
trigger6 = command = "CPU_6"
trigger7 = command = "CPU_7"
trigger8 = command = "CPU_8"
trigger9 = command = "CPU_9"
trigger10 = command = "CPU_10"
trigger11 = command = "CPU_11"
trigger12 = command = "CPU_12"
trigger13 = command = "CPU_13"          
trigger14 = command = "CPU_14"
trigger15 = command = "CPU_15"
trigger16 = command = "CPU_16"
v = 59
value = 1

combo 1 IA;
[State -1]
type = ChangeState
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = P2BodyDist X <= 1000 && Random <= 650
trigger1 = Ctrl && P2MoveType = A && StateType = S
value = 1059

combo 2 IA;
[State -1]
type = ChangeState
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = P2BodyDist X <= 1000 && Random <= 650
trigger1 = Ctrl && P2MoveType = A && StateType = S
value = 1155

combo 3 IA;
[State -1]
type = ChangeState
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = P2BodyDist X <= 1000 && Random <= 650
trigger1 = Ctrl && P2MoveType = A && StateType = S
value = 1170

combo 4 IA;
[State -1]
type = ChangeState
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = P2BodyDist X <= 1000 && Random <= 650
trigger1 = Ctrl && P2MoveType = A && StateType = S
value = 1182


CARGAR KI IA;
[State -1]
type = ChangeState
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = P2BodyDist X <= 100 && Random <=0
trigger1 = Ctrl && P2MoveType = A && StateType = S
value = 730

CARGAR KI IA, EN EL AIRE;
[State -1]
type = ChangeState
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = P2BodyDist X <= 100 && Random <=0
trigger1 = Ctrl && P2MoveType = A && StateType = S
value = 731

COMENZAR CON 1000 DE PODER;
[state -1]
type = poweradd
trigger1 = roundno = 1
trigger1 = roundstate = 0
trigger1 = power < 1000
value = 730


;CORRER
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !win
trigger1 = Var(59) = 1
trigger1 = Random <= 900
trigger1 = P2bodydist X > 10
trigger1 = statetype = S
trigger1 = ctrl

; 1st Punch
[State -1]
type = ChangeState
value = 207
triggerall = !win
triggerall = P2bodydist X < 20
triggerall = Var(59) = 1
trigger1 = Random <= 700
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Random <= 500
trigger2 = stateno = 208 && MoveHit = 1

; 2nd Punch
[State -2]
type = ChangeState
value = 208
triggerall = !win
triggerall = Var(59) = 1
triggerall = P2bodydist X < 20
trigger1 = Random <= 500
trigger1 = statetype = S
trigger1 = ctrl

;TELETRANSPORTACION+CODAZO
[State -2]
type = ChangeState
value = 233
triggerall = !win
triggerall = Var(59) = 1
triggerall = P2bodydist X > 20
trigger1 = Random <= 500
trigger1 = statetype = S
trigger1 = ctrl



; Guarding
[State -2]
type = ChangeState
value = 130
triggerall = !win
triggerall = p2movetype = A
triggerall = Var(59) = 1
triggerall = Random <= 449
trigger1 = ctrl

; Jump
[State -2]
type = ChangeState
value = 50
triggerall = !win
triggerall = Var(59) = 1
trigger1 = P2bodydist X > 50
trigger1 = Random <= 200
trigger1 = statetype = S
trigger1 = ctrl

; Super Jump
[State -2]
type = ChangeState
value = 707
triggerall = !win
triggerall = Var(59) = 1
trigger1 = P2bodydist X < 50
trigger1 = var(59) >= 200
trigger1 = statetype = S
trigger1 = ctrl

;Attack Sequence(socos)
[State -1]
type = ChangeState
value = 235
triggerall = command = "combos consecutivos"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1]
type = ChangeState
value = 237
triggerall = command = "patadas consecutivas"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1


;Counter
[State -1]
type = SelfState
value = 1265
triggerall = command = "counter attack"
triggerall = alive = 1
triggerall = stateno != 5110
triggerall = stateno != 5170
trigger1 = ctrl = 1
trigger1 = stateno = [150,153]
trigger2 = movetype = H


;counter AI
[State -2]
type = ChangeState
value = 1265
triggerall = !win
triggerall = Var(59) = 1
triggerall = Random <= 500
trigger1 = P2bodydist X < 10
trigger1 = var(59) >= 200
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movetype = H

; patada consecutivas
[State -2]
type = ChangeState
value = 237
triggerall = !win
triggerall = P2bodydist X < 40
triggerall = Var(59) = 1
trigger1 = Random <= 500
trigger1 = statetype = S
trigger1 = ctrl

; combos consecutivos
[State -2]
type = ChangeState
value = 235
triggerall = !win
triggerall = P2bodydist X < 50
triggerall = Var(59) = 1
trigger1 = Random <= 500
trigger1 = statetype = S
trigger1 = ctrl

;Volar
[State -1]
type = null;ChangeState
value = 900
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Volar
[State -1]
type = null;ChangeState
value = 910
triggerall = command = "fly"
trigger1 = statetype != A
trigger1 = ctrl = 1 
