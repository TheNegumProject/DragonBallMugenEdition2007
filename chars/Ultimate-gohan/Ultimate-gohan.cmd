;-| Super Motions |--------------------------------------------------------
[Command]
name = "ssj2"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "mystic"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "ssj4"
command = ~D, DF, F, D, DF, F, a + b
time = 30

[Command]
name = "masenko"
command = ~D, DB, B, F, b
time = 30

[Command]
name = "kamehameha"
command = ~D, DB, B, F, c
time = 30

[Command]
name = "renzoku"
command = ~D, DB, B, F, a
time = 30

[Command]
name = "quickexplosion"
command = ~D, DB, B, F, x
time = 30

[Command]
name = "ultraseq"
command = ~D, DB, B, F, y
time = 30

;-| Special Motions |------------------------------------------------------
;-----------------
[Command]
name = "Bukuu Jutsu"
command = x+y

[Command]
name = "teleporte"
command = b+c
time = 1

[Command]
name = "HDHPLv1"
command = ~F, B, F, a
time = 30

[Command]
name = "HDHPLv2"
command = ~F, B, F, b
time = 30

[Command]
name = "HDHPLv3"
command = ~F, B, F, c
time = 30

[Command]
name = "air_attack"
command = ~F, D, x
time = 30

[Command]
name = "seqchutes"
command = ~F, D, y
time = 30

[Command]
name = "aerial_kick"
command = ~F, D, z
time = 30

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
name = "balao"
command = /F,a

[Command]
name = "balao"
command = /F,b

[Command]
name = "balao"
command = /F,c

; QCF
[Command]
name = "inv_fireball"
command = ~D, DF, F, a

[Command]
name = "fireball"
command = ~D, DF, F, b

[Command]
name = "3fireballs"
command = ~D, DF, F, c

[Command]
name = "triplefireball"
command = ~D, DF, F, x

[Command]
name = "seekerfireball"
command = ~D, DF, F, y

[Command]
name = "kieizan"
command = ~D, DF, F, z

;-----------------
; QCB
[Command]
name = "dbz3seq"
command = ~D, DB, B, a

[Command]
name = "highseq"
command = ~D, DB, B, b

[Command]
name = "powerfullseq"
command = ~D, DB, B, c

[Command]
name = "gokucilekick"
command = ~D, DB, B, x

[Command]
name = "highkickseq"
command = ~D, DB, B, y

[Command]
name = "powerfullkickseq"
command = ~D, DB, B, z

;-----------------
; Uppercut
[Command]
name = "uppercut_a"
command = ~F, D, DF, a

[Command]
name = "uppercut_b"
command = ~F, D, DF, b

[Command]
name = "uppercut_c"
command = ~F, D, DF, c

[Command]
name = "uppercut_x"
command = ~F, D, DF, x

[Command]
name = "uppercut_y"
command = ~F, D, DF, y

[Command]
name = "uppercut_z"
command = ~F, D, DF, z


;--------------------
;Charge_Down_up
[Command]
name = "chargedownup_a"
command = ~60$D, U, a
time = 10

[Command]
name = "chargedownup_b"
command = ~60$D, U, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;--------------------
;Charge_Back_fwd
[Command]
name = "chargebackfwd_a"
command = ~60$B, F, a
time = 10

[Command]
name = "chargebackfwd_b"
command = ~60$B, F, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "UU"
command = U, U
time = 15

[Command]
name = "DD"
command = D, D
time = 15

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
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
;SSJ4 Turn
[State -1]
type = changestate
value = 736
triggerall = var(7) = 2
triggerall = power = 3000
trigger1 = command = "ssj4"
trigger1 = statetype = S

;mystic Turn
[State -1]
type = changestate
value = 2000
triggerall = var(7) = 1
triggerall = power >= 3000
trigger1 = command = "mystic"
trigger1 = statetype = S

;ssj2
[State -1]
type = changestate
value = 500
triggerall = var(7) = 0
triggerall = power >= 2000
trigger1 = command = "ssj2"
trigger1 = statetype = S
:--------------------------------------------------------------------------------
;Renzoku Energy Dan!!!!!!!!!!
[State -1]
type = changestate
value = 2002
triggerall = command = "renzoku"
triggerall = power >= 1000
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;---------------------------------------------------------------------------
;Masenko!!!!!!!!!!
[State -1]
type = changestate
value = 2030
triggerall = command = "masenko"
triggerall = power >= 2000
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;----------------------------------------------------------------------------
;kamehameha!!!!!!!!!!
[State -1]
type = changestate
value = 2004
triggerall = command = "kamehameha"
triggerall = power >= 3000
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;-----------------------------------------------------------------------------
;Quick Explosion
[State -1]
type = changestate
value = 2050
triggerall = command = "quickexplosion"
triggerall = power >= 1000
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;----------------------------------------------------------------------------
;Ultra Sequence
[State -1]
type = changestate
value = 2040
triggerall = command = "ultraseq"
triggerall = power >= 2000
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;---------------------------------------------------------------------------
;HD High Punch Lv1
[State -1]
type = ChangeState
value = 1400
triggerall = command = "HDHPLv1"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;HD High Punch Lv2
[State -1]
type = ChangeState
value = 1401
triggerall = command = "HDHPLv2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;HD High Punch Lv3
[State -1]
type = ChangeState
value = 1402
triggerall = command = "HDHPLv3"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510 
;---------------------------------------------------------------------------
;Powerfull Kick Sequence
[State -1]
type = changestate
value = 1105
triggerall = command = "powerfullkickseq"
triggerall = numproj = 0
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;High Kick Sequence
[State -1]
type = changestate
value = 1104
triggerall = command = "highkickseq"
triggerall = numproj = 0
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;Goku Cicle Kick Sequence
[State -1]
type = changestate
value = 1103
triggerall = command = "gokucilekick"
triggerall = numproj = 0
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;Powerfull Sequence
[State -1]
type = changestate
value = 1102
triggerall = command = "powerfullseq"
triggerall = numproj = 0
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;high Sequence
[State -1]
type = changestate
value = 1101
triggerall = command = "highseq"
triggerall = numproj = 0
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;Dbz3 Sequence
[State -1]
type = changestate
value = 1100
triggerall = command = "dbz3seq"
triggerall = numproj = 0
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;Invisible Fireball
[State -1]
type = changestate
value = 1004
triggerall = command = "inv_fireball"
triggerall = numproj = 0
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;Fireball
[State -1]
type = changestate
value = 1005
triggerall = command = "fireball"
triggerall = numproj = 0
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;3 Fireballs
[State -1]
type = changestate
value = 1006
triggerall = command = "3fireballs"
triggerall = numproj = 0
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;Triple Fireball
[State -1]
type = changestate
value = 1007
triggerall = command = "triplefireball"
triggerall = numproj = 0
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;seeker Fireball
[State -1]
type = changestate
value = 1008
triggerall = command = "seekerfireball"
triggerall = numproj = 0
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510

;kieizan
[State -1]
type = changestate
value = 1010
triggerall = command = "kieizan"
triggerall = numproj = 0
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;------------------------------------------------------------------------
;Aerial Kick
[State -1]
type = ChangeState
value = 1603
triggerall = command = "aerial_kick"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;------------------------------------------------------------------------
;sequencia de chutes
[State -1]
type = ChangeState
value = 1600
triggerall = command = "seqchutes"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;------------------------------------------------------------------------
;Ataque Aéreo
;sequencia de chutes
[State -1]
type = ChangeState
value = 1606
triggerall = command = "air_attack"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;-----------------------------------------------------------------------
; Balão
[State -1]
type = ChangeState
value = 800
trigger1 = command = "balao"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 10
;---------------------------------------------------------------------------
;Charge Power
[State -1]
type = ChangeState
value = 730
triggerall = var(1) != 3
triggerall = command = "holda"
triggerall = command = "holdb"
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Teleporte
[State -1]
type = ChangeState
value = 336
triggerall = command = "teleporte"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1510
trigger3 = stateno = 1500
;--------------------------------------------------------------
;Bukuu Jutsu (On Ground)
[State -1]
type = ChangeState
value = 1500
triggerall = command = "Bukuu Jutsu"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Bukuu Jutsu (In the Air)
[State -1]
type = ChangeState
value = 1510
triggerall = command = "Bukuu Jutsu"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_Throw (close dir+b)
; Complicated? Skip the throws and look at stand_a, etc, first.
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = null; ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 ;Near P2
trigger1 = command = "fwd_b";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;---------------------------------------------------------------------------
;Air_Throw1 (close dir+b)
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = null; ChangeState
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"
;===========================================================================
;---------------------------------------------------------------------------
;Stand_a
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact = 1  
trigger3 = stateno = 215
trigger3 = movecontact = 1  
trigger4 = stateno = 205
trigger4 = movecontact = 1
trigger5 = stateno = 211
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 1510

[State -1]
type = ChangeState
value = 202
triggerall = command = "a"
triggerall = stateno = 200
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1510
;---------------------------------------------------------------------------------------
;Stand_b
[State -1]
type = ChangeState
value = 201
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact = 1  
trigger3 = stateno = 215
trigger3 = movecontact = 1  
trigger4 = stateno = 205
trigger4 = movecontact = 1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 211
trigger6 = movecontact = 1
trigger7 = stateno = 1510

[State -1]
type = ChangeState
value = 203
triggerall = command = "b"
triggerall = stateno = 201
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1510
;-------------------------------------------------------------------------
;Stand_c
[State -1]
type = ChangeState
value = 205
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact = 1  
trigger3 = stateno = 215
trigger3 = movecontact = 1  
trigger4 = stateno = 211
trigger4 = movecontact = 1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 1510

[State -1]
type = ChangeState
value = 204
triggerall = command = "c"
triggerall = stateno = 205
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1510
;---------------------------------------------------------------------------
;Stand_x
[State -1]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 211
trigger2 = movecontact = 1  
trigger3 = stateno = 215
trigger3 = movecontact = 1  
trigger4 = stateno = 200
trigger4 = movecontact = 1   
trigger5 = stateno = 205
trigger5 = movecontact = 1   
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 1510

[State -1]
type = ChangeState
value = 212
triggerall = command = "x"
triggerall = stateno = 210
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1510
;------------------------------------------------------------------
;Stand_y
[State -1]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1  
trigger4 = stateno = 205
trigger4 = movecontact = 1   
trigger5 = stateno = 210
trigger5 = movecontact = 1   
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 1510

[State -1]
type = ChangeState
value = 213
triggerall = command = "y"
triggerall = stateno = 211
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1510
;-------------------------------------------------------------------------------

;Stand_z
[State -1]
type = ChangeState
value = 215
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1 
trigger3 = stateno = 210
trigger3 = movecontact = 1  
trigger4 = stateno = 205
trigger4 = movecontact = 1
trigger5 = stateno = 211
trigger5 = movecontact = 1
trigger6 = stateno = 201
trigger6 = movecontact = 1
trigger7 = stateno = 1510

[State -1]
type = ChangeState
value = 214
triggerall = command = "z"
triggerall = stateno = 215
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1510
;---------------------------------------------------------------------------
;Crouch_b
[State -1]
type = ChangeState
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact = 1  
trigger3 = stateno = 215
trigger3 = movecontact = 1  
trigger4 = stateno = 200
trigger4 = movecontact = 1
trigger5 = stateno = 205
trigger5 = movecontact = 1  
trigger6 = stateno = 410
trigger6 = movecontact = 1  
;---------------------------------------------------------------------------
;Crouch_y
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact = 1  
trigger3 = stateno = 215
trigger3 = movecontact = 1  
trigger4 = stateno = 200
trigger4 = movecontact = 1
trigger5 = stateno = 205
trigger5 = movecontact = 1  
trigger6 = stateno = 400
trigger6 = movecontact = 1

;Crouch_z
[State -1]
type = ChangeState
value = 410
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact = 1  
trigger3 = stateno = 215
trigger3 = movecontact = 1  
trigger4 = stateno = 200
trigger4 = movecontact = 1
trigger5 = stateno = 205
trigger5 = movecontact = 1  
trigger6 = stateno = 400
trigger6 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_a
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact = 1  
trigger3 = stateno = 215
trigger3 = movecontact = 1  
trigger4 = stateno = 200
trigger4 = movecontact = 1
trigger5 = stateno = 205
trigger5 = movecontact = 1  
trigger6 = stateno = 410
trigger6 = movecontact = 1  

;Crouch_c
[State -1]
type = ChangeState
value = 400
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact = 1  
trigger3 = stateno = 215
trigger3 = movecontact = 1  
trigger4 = stateno = 200
trigger4 = movecontact = 1
trigger5 = stateno = 205
trigger5 = movecontact = 1  
trigger6 = stateno = 410
trigger6 = movecontact = 1  

;---------------------------------------------------------------------------
;Crouch_x
[State -1]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact = 1  
trigger3 = stateno = 215
trigger3 = movecontact = 1  
trigger4 = stateno = 200
trigger4 = movecontact = 1
trigger5 = stateno = 205
trigger5 = movecontact = 1  
trigger6 = stateno = 400
trigger6 = movecontact = 1
;---------------------------------------------------------------------------
;Jump_b
[State -1]
type = ChangeState
value = 600
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 610
trigger2 = movecontact = 1

;Jump_c
[State -1]
type = ChangeState
value = 600
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 610
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Jump_X
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 610
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Jump_y
[State -1]
type = ChangeState
value = 610
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1

;Jump_z
[State -1]
type = ChangeState
value = 610
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Jump_x
[State -1]
type = ChangeState
value = 610
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1



