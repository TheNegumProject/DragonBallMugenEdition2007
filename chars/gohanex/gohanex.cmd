; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = "some_name"
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /F, a    ;hold fwd while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;               command = ~30
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their engine.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands are given below. Delete, add, or modify as you wish.

;-| Super Motions |--------------------------------------------------------

; Turn SSj
[Command]
name = "ssj"
command = ~D, DB, B, y+z
time = 30

; Turn SSj2
[Command]
name = "ssj2"
command = ~D, DB, B, y+z
time = 30

; Single Handed KameHameHa
[Command]
name = "shkamehameha"
command = ~D, DF, F, a
time = 30

; Upward Masenko
[Command]
name = "upmasenko"
command = ~D, DB, B, F, y
time = 30

; Downward Masenko
[Command]
name = "domasenko"
command = ~D, DB, B, F, y
time = 30

; Masenko and Special Beam Cannon w/ Piccolo(Grounded)
[Command]
name = "sbcannon"
command = ~D, DF, F, x
time = 30

; Normal Masenko
[Command]
name = "masenko"
command = ~D, DF, F, b
time = 30

; Double Masenko w/ Trunks(Grounded)
[Command]
name = "dmasenko"
command = ~D, DF, F, y
time = 30

; Upward KameHameHa(Grounded)
[Command]
name = "ukamehameha"
command = ~D, DB, B, F, z
time = 30

; Downward KameHameHa(Aerial)
[Command]
name = "dowkamehameha"
command = ~D, DF, F, z
time = 30

; Normal KameHameHa
[Command]
name = "kamehameha"
command = ~D, DF, F, c
time = 30

; Double KameHameHa w/ Goku(Grounded)
[Command]
name = "dkamehameha"
command = ~D, DF, F, z
time = 30

[Command]
name = "HypeRenzo"
command = ~D, DB, B, c
time = 30

;-| Special Motions |------------------------------------------------------
[Command]                    
name = "recover2"            
command = x+z
time = 1

[Command]                    
name = "Instant"            
command = a+c 
time = 1

[Command]
name = "ppunch"
command = F, B, a

[Command]
name = "mashot"
command = B, F, y

[Command]
name = "umashot"
command = F, B, y

[Command]
name = "kameshot"
command = D, DB, B, z

[Command]
name = "balao"
command = /F,a

[Command]
name = "Renzo"
command = ~D, DB, B, c
time = 30

[Command]
name = "seeker_fireball"
command = ~F, B, F, c
time = 30

[Command]
name = "3fireball"
command = ~B, F, B, c
time = 30

[Command]
name = "combo"
command = ~D, DB, B, a

[Command]
name = "combo2"
command = ~D,DF,F, b

[Command]
name = "saiyasmash"
command = ~D, DB, B, x

[command]
name = "teleport_a"
command = ~B, D, DB, a

[command]
name = "teleport_b2"
command = ~F, D, DF, a

[command]
name = "teleport_a2"
command = ~B, D, DB, b

[command]
name = "teleport_b"
command = ~F, D, DF, b

[Command]
name = "fireball1"
command = B, F, c

[Command]
name = "fireball2"
command = F, B, c

; QCF
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

;-----------------
; QCB
[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
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


;---------------------+|Inteligencia Artificial|+-------------------------;
[Command]
name = "IAf_a"
command = ~D, DF, F, a
time = 1

[Command]
name = "IAf_b"
command = ~D, DF, F, b
time = 1

[Command]
name = "IAf_c"
command = ~D, DF, F, c
time = 1

[Command]
name = "IAf_x"
command = ~D, DF, F, x
time = 1

[Command]
name = "IAf_y"
command = ~D, DF, F, y
time = 1

[Command]
name = "IAf_z"
command = ~D, DF, F, z
time = 1

[Command]
name = "IAb_a"
command = ~D, DB, B, a
time = 1

[Command]
name = "IAb_b"
command = ~D, DB, B, b
time = 1

[Command]
name = "IAb_c"
command = ~D, DB, B, c
time = 1

[Command]
name = "IAb_x"
command = ~D, DB, B, x
time = 1

[Command]
name = "IAb_y"
command = ~D, DB, B, y
time = 1

[Command]
name = "IAb_z"
command = ~D, DB, B, z
time = 1

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
name = "fly"
command = y+x
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
name = "s"
command = s
time = 1

[Command]
name = "charge"
command = /a
time = 1

[Command]
name = "charge 1"
command = /b
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
[State -1]
type = varset	
triggerall = var(20)!= 1
trigger1 = command = "IAf_a" 
trigger2 = command = "IAf_b"
trigger3 = command = "IAf_c"
trigger4 = command = "IAf_x"
trigger5 = command = "IAf_y"
trigger6 = command = "IAf_z"
trigger7 = command = "IAb_a"
trigger8 = command = "IAb_b"
trigger9 = command = "IAb_c"
trigger10 = command = "IAb_x"
trigger11 = command = "IAb_y"
trigger12 = command = "IAb_z"
v = 20
value = 1
;----------------------------------------------------------------------------

;I_Move
[State -1]
type = ChangeState
value = 2001
triggerall = command = "Instant"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 1900

;Instantaneous Movement - Counter 1
[State -1]
type = ChangeState
value = 2001
triggerall = command = "Instant"
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

;Instantaneous Movement - Counter 2
[State -1]
type = ChangeState
value = 2001
triggerall = command = "recover2"
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
trigger20 = MoveType = H
trigger21 = stateno = 1900
;---------------------------------------------------------------------------
;Teleport A
[State -1]
type = ChangeState
value = 7500
triggerall = command = "teleport_a"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1900

;----------------------------------------------------------------------------

;Teleport a
[State -1]
type = ChangeState
value = 7510
triggerall = command = "teleport_a2"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1900

;---------------------------------------------------------------------------
;Teleport b
[State -1]
type = ChangeState
value = 7520
triggerall = command = "teleport_b"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1900

;---------------------------------------------------------------------------

;Teleport b1
[State -1]
type = ChangeState
value = 7530
triggerall = command = "teleport_b2"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1900
;---------------------------------------------------------------------------
;Charge(Power up)
[State -1]
type = ChangeState
value = 953
triggerall = power < 3000
trigger1 = command = "charge"
trigger1 = command = "charge 1"
triggerall = statetype = S
triggerall = ctrl = 1
trigger2 = stateno = 1900
;---------------------------------------------------------------------------
;Turn SSJ
[State -1]
type = changestate
value = 29999
triggerall = command = "ssj"
triggerall = power = 3000
trigger1 = Var(1) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Turn SSJ2
[State -1]
type = changestate
value = 39999
triggerall = command = "ssj2"
triggerall = power = 3000
trigger1 = Var(1) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Single Handed Kamehameha
[State -1]
type = ChangeState
value = 3000
triggerall = command = "shkamehameha"
triggerall = power >= 1000
triggerall = stateno != 3000 
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger3 = stateno = 1900
;---------------------------------------------------------------------------

;Masenko (level 1)
[State -1]
type = ChangeState
value = 3001
triggerall = (command="masenko" && power>=1000) 
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 1900

; Double Masenko w/ Piccolo (level 2)
[State -1]
type = ChangeState
value = 3005
triggerall = (command="sbcannon" && power>=2000) 
triggerall = P2Name != "piccolo"
triggerall = P4Name != "piccolo"
triggerall = NumHelper(10020) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

; Double Masenko w/ Trunks (level 2)
[State -1]
type = ChangeState
value = 3002
triggerall = (command="dmasenko" && power>=2000) 
triggerall = P2Name != "trunksSSJ"
triggerall = P4Name != "trunksSSJ"
triggerall = NumHelper(10000) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

; Downward Masenko(Aerial)
[State -1]
type = ChangeState
value = 3230
triggerall = command = "domasenko"
triggerall = power >= 1000 
triggerall = stateno != 3230 
triggerall = numprojid(9894) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 1800
trigger3 = statetype = A
trigger3 = hitdefattr = SC, NA, SA 
trigger3 = movecontact = 1
trigger4 = stateno = 1900

;Upward Masenko (Grounded)
[State -1]
type = ChangeState
value = 3231
triggerall = (command="upmasenko" && power>=1000) 
trigger1 = ctrl = 1
trigger1 = statetype = S
;---------------------------------------------------------------------------
; Normal Kamehameha
[State -1]
type = ChangeState
value = 3003
triggerall = command = "kamehameha"
triggerall = power >= 2000
triggerall = stateno != 3003
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger3 = stateno = 1900

; Double KameHameHa w/ Goku (level 2)
[State -1]
type = ChangeState
value = 3004
triggerall = (command="dkamehameha" && power>=2000) 
triggerall = P2Name != "gokuSSJ"
triggerall = P4Name != "gokuSSJ"
triggerall = NumHelper(10010) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

; Aerial Kamehameha
[State -1]
type = ChangeState
value = 3006
triggerall = command = "dowkamehameha"
triggerall = power >= 2000 
triggerall = stateno != 3006 
triggerall = numprojid(9899) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 1800
trigger3 = statetype = A
trigger3 = hitdefattr = SC, NA, SA 
trigger3 = movecontact = 1
trigger4 = stateno = 1900

; Upwards Kamehameha
[State -1]
type = ChangeState
value = 3103
triggerall = command = "ukamehameha"
triggerall = power >= 2000
triggerall = stateno != 3103
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA

;---------------------------------------------------------------------------
; 30 Renzoku(Hyper)Grounded
[State -1]
type = ChangeState
value = 5901
triggerall = power >= 1000
triggerall = command = "HypeRenzo"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; 30 Renzoku(Hyper)Aerial
[State -1]
type = ChangeState
value = 4901
triggerall = power >= 1500
triggerall = command = "HypeRenzo"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 1900
;---------------------------------------------------------------------------
; 5 Renzoku
[State -1]
type = ChangeState
value = 3901
triggerall = power >= 150
triggerall = command = "Renzo"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 1900
;--------------------------------------------------------------------------
;Sequencia Dragon Ball Z 2
[State -1]
type = ChangeState
value = 1020
triggerall = command = "combo"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900


;Sequencia 2 Dragon Ball Z 2
[State -1]
type = null;ChangeState
value = 1010
triggerall = command = "combo2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900

;Saiya-jin Smasher
[State -1]
type = ChangeState
value = 3211
triggerall = command = "saiyasmash"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
;---------------------------------------------------------------------------
;Fireball_A
[State -1]
type = ChangeState
value = 1000
triggerall = command = "fireball1";-------
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200        ;Stand_a
trigger3 = stateno = 300        ;Stand_fwd_a
trigger3 = movecontact = 1
trigger4 = stateno = 500        ;Crouch_fwd_a
trigger4 = time <= 2
trigger5 = stateno = 410        ;Crouch_b
trigger5 = movecontact = 1
trigger6 = stateno = 210        ;stand_b
trigger6 = movecontact = 1
trigger7 = stateno = 1900

;Fireball_B
[State -1]
type = ChangeState
value = 1001
triggerall = command = "fireball2";-------
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200        ;Stand_a
trigger3 = stateno = 300        ;Stand_fwd_a
trigger3 = movecontact = 1
trigger4 = stateno = 500        ;Crouch_fwd_a
trigger4 = time <= 2
trigger5 = stateno = 410        ;Crouch_b
trigger5 = movecontact = 1
trigger6 = stateno = 210        ;stand_b
trigger6 = movecontact = 1
trigger7 = stateno = 1900

;AirFireball_A
[State -1]
type = null;ChangeState
value = 1005
trigger1 = command = "fireball1";-------
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = command = "fireball1";-------
trigger2 = stateno = 600        ;jump_a
trigger3 = command = "fireball1";-------
trigger3 = stateno = 610        ;jump_b
trigger3 = movecontact = 1
trigger4 = command = "fireball1";-------
trigger4 = stateno = 800        ;jump_fwd_a
trigger4 = movecontact = 1
;trigger5 = command = "fireball1";-------
;trigger5 = stateno = 1031        ;uppercut_b2
;trigger5 = movecontact = 1
;trigger6 = command = "fireball1";-------
;trigger6 = stateno = 1051        ;flykick_b2
;trigger6 = movecontact = 1
;trigger7 = command = "fireball1";-------
;trigger7 = stateno = 1070        ;airflykick_b
;trigger7 = movecontact = 1

;Triple Fireball_A
[State -1]
type = ChangeState
value = 1003
triggerall = command = "3fireball";-------
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;Seeker Fireball
[State -1]
type = ChangeState
value = 7025
triggerall = Var(7) = 0
triggerall = command = "seeker_fireball"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
;trigger2 = time >= 7

;KameHameHa Shot
[State -1]
type = ChangeState
value = 1111
triggerall = command = "kameshot"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
;trigger2 = time >= 7

;Masenko Shot
[State -1]
type = ChangeState
value = 745
triggerall = command = "mashot"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
;trigger2 = time >= 7

; Downward Masenko Shot(Aerial)
[State -1]
type = ChangeState
value = 746
triggerall = command = "umashot"
triggerall = stateno != 746 
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 1800
trigger3 = statetype = A
trigger3 = hitdefattr = SC, NA, SA 
trigger3 = movecontact = 1
trigger4 = stateno = 1900

; Upward Masenko Shot(Grounded)
[State -1]
type = ChangeState
value = 747
triggerall = command = "umashot" 
triggerall = stateno != 747
trigger1 = statetype = S
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
;AIR_RunFwd
[State -1]
type = ChangeState
value = 101
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;AIR_RunBack
[State -1]
type = ChangeState
value = 107
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; Voar 
[State -1]
type = ChangeState
value = 1800
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = command = "fly"

;---------------------------------------------------------------------------
; Voar ( no pulo )
[State -1]
type = ChangeState
value = 1900
trigger1 = statetype = A
trigger1 = ctrl = 1
triggerall = command = "fly"

;----------------------------------------------------------------------------

; Aerial kick
[State -1]
type = ChangeState
value = 1850
triggerall = command = "QCF_x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 1900

;Air Counter Attack - Hard
[State -1]
type = ChangeState
value = 1850
triggerall = PalNo = [1, 4]
triggerall = command = "QCF_x"
trigger1 = CanRecover = 1
trigger1 = HitFall = 1
trigger1 = StateType = A
trigger1 = HitOver = 1
trigger1 = Alive = 1
;---------------------------------------------------------------------------
;Power Punch
[State -1]
type = ChangeState
value = 9698
triggerall = command = "ppunch"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900
;---------------------------------------------------------------------------
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
;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900

[State -1]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = stateno = 200
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1900

[State -1]
type = ChangeState
value = 201
triggerall = command = "a"
triggerall = stateno = 205
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1900


[State -1]
type = ChangeState
value = 215
triggerall = command = "a"
triggerall = stateno = 201
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1900
;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 205
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900

[State -1]
type = ChangeState
value = 214
triggerall = command = "b"
triggerall = stateno = 205
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1900

[State -1]
type = ChangeState
value = 213
triggerall = command = "b"
triggerall = stateno = 214
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1900

[State -1]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = stateno = 213
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1900
;---------------------------------------------------------------------------
;Stand_C
[State -1]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900

[State -1]
type = ChangeState
value = 111
triggerall = command = "c"
triggerall = stateno = 220
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1900

[State -1]
type = ChangeState
value = 221
triggerall = command = "c"
triggerall = stateno = 111
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1900
;---------------------------------------------------------------------------
;Stand_X
[State -1]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900

[State -1]
type = ChangeState
value = 218
triggerall = command = "x"
triggerall = stateno = 210
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1900

[State -1]
type = ChangeState
value = 219
triggerall = command = "x"
triggerall = stateno = 218
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1900

[State -1]
type = ChangeState
value = 225
triggerall = command = "z"
triggerall = stateno = 219
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1900
;-----------------------------------------------------------------------------
;Stand_Y
[State -1]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900

[State -1]
type = ChangeState
value = 216
triggerall = command = "y"
triggerall = stateno = 215
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1900

[State -1]
type = ChangeState
value = 225
triggerall = command = "y"
triggerall = stateno = 216
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1900

;----------------------------------------------------------------------------
;Stand_Z
[State -1]
type = ChangeState
value = 225
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1900

[State -1]
type = ChangeState
value = 216
triggerall = command = "z"
triggerall = stateno = 225
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1900

; Final kick
[State -1]
type = ChangeState
value = 211
triggerall = command = "z"
triggerall = stateno = 216
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1900

; Power Kick
[State -1]
type = ChangeState
value = 212
triggerall = command = "c"
triggerall = stateno = 216
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1900

; SCFF
[State -1]
type = ChangeState
value = 405
triggerall = command = "c"
triggerall = stateno = 212
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1900
;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 401
triggerall = command = "b"
triggerall = stateno = 400
triggerall = movecontact = 1
trigger1 = statetype = C
trigger2 = stateno = 1900
;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 401
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = stateno = 401
triggerall = movecontact = 1
trigger1 = statetype = C
trigger2 = stateno = 1900
;---------------------------------------------------------------------------
;Crouch_C
[State -1]
type = ChangeState
value = 400
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 240
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 600
trigger10 = movecontact = 1
trigger11 = stateno = 610
trigger11 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_X
[State -1]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 240
trigger9 = movecontact = 1
trigger10 = stateno = 600
trigger10 = movecontact = 1
trigger11 = stateno = 610
trigger11 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 411
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 240
trigger9 = movecontact = 1
trigger10 = stateno = 600
trigger10 = movecontact = 1
trigger11 = stateno = 610
trigger11 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_Z
[State -1]
type = ChangeState
value = 411
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 240
trigger9 = movecontact = 1
trigger10 = stateno = 600
trigger10 = movecontact = 1
trigger11 = stateno = 610
trigger11 = movecontact = 1

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 600
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_C
[State -1]
type = ChangeState
value = 600
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_X
[State -1]
type = ChangeState
value = 610
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 610
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_Z
[State -1]
type = ChangeState
value = 610
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Aura-On
[State -1]
type = varset	
triggerall = var(2)= 0
trigger1 = command = "s" 
v = 2
value = 1

[State -1]
type = ChangeState
value = 9999
triggerall = Var(2) = 0
triggerall = Var(1) = 1
triggerall = Var(1) = 2
trigger1 = command = "s"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Aura-Off
[State -1]
type = varset	
triggerall = var(2)= 1
trigger1 = command = "s" 
v = 2
value = 0

[State -1]
type = ChangeState
value = 0
triggerall = Var(2) = 1
triggerall = Var(1) = 1
triggerall = Var(1) = 2
trigger1 = command = "s"
trigger1 = statetype = A
trigger1 = ctrl = 1