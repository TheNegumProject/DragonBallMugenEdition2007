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
;   name = some_name
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
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
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
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
;


;--------------------------------------------------------------------------
;Specials/Supers

[Command]
name = "Final Flash"
command = DF,x
time = 20

[Command]
name = "Big Bang Attack"
command = DF,a
time = 20

[Command]
name = "Final Shine"
command = DF,y
time = 20


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "hop"
command = D,D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "Dm";Required (do not remove)
command = x+y
time = 10

[Command]
name = "Exceed";Required (do not remove)
command = a+b
time = 10

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "Charge Ki";Required (do not remove)
command = /c

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "hijump"
command = ~$D, $U
time = 8 

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
name = "start"
command = s
time = 1

[Command]
name = "charge"
command = /$c
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
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Exceed
[State -1, Exceed]
type = ChangeState
value = 1000 ;Replace value
triggerall = Var(51) = 1
trigger1 = command = "Exceed"
trigger1 = Life <= 500
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Dm
[State -1, Dm]
type = ChangeState
value = 6000 ;Replace value
trigger1 = command = "Dm"
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------
;===========================================================================
;---------------------------------------------------------------------------
;Light Punch
[State -1,Light Punch]
Type = ChangeState
Triggerall = Command = "x"
Triggerall = Command != "holddown"
Trigger1 = ctrl
Trigger1 = alive&&ctrl&&statetype!=A
Trigger2 = (stateno = 201)&& movecontact
trigger3 = (StateType = S) && (MoveContact) && (Var(0) > 0)
Value = 200
;---------------------------------------------------------------------------
;Light Kick
[State -1,Light Kick]
Type = ChangeState
Triggerall = Command = "y"
Triggerall = Command != "holddown"
Trigger1 = ctrl
Trigger1 = alive&&ctrl&&statetype!=A
Trigger2 = (stateno = 202)&& movecontact
trigger3 = (StateType = S) && (MoveContact) && (Var(0) > 0)
Value = 201
;---------------------------------------------------------------------------
;Medium Punch
[State -1,Medium Punch]
Type = ChangeState
Triggerall = Command = "x"
Triggerall = Command != "holddown"
Trigger1 = ctrl
Trigger1 = alive&&ctrl&&statetype!=A
Trigger2 = (stateno = 200)&& movecontact
Trigger3 = (stateno = 201)&& movecontact
trigger4 = (StateType = S) && (MoveContact) && (Var(0) > 0)
Value = 202
;---------------------------------------------------------------------------
;Medium Kick
[State -1,Medium Kick]
Type = ChangeState
Triggerall = Command = "y"
Triggerall = Command != "holddown"
Trigger1 = ctrl
Trigger1 = alive&&ctrl&&statetype!=A
Trigger2 = (stateno = 201)&& movecontact
Trigger3 = (stateno = 202)&& movecontact
trigger4 = (StateType = S) && (MoveContact) && (Var(0) > 0)
Value = 203
;---------------------------------------------------------------------------
;Medium Punch
[State -1,Medium Punch]
Type = ChangeState
Triggerall = Command = "a"
Triggerall = Command != "holddown"
Trigger1 = ctrl
Trigger1 = alive&&ctrl&&statetype!=A
Trigger2 = (stateno = 200)&& movecontact
Trigger3 = (stateno = 201)&& movecontact
trigger4 = (StateType = S) && (MoveContact) && (Var(0) > 0)
Value = 202
;---------------------------------------------------------------------------
;Medium Kick
[State -1,Medium Kick]
Type = ChangeState
Triggerall = Command = "b"
Triggerall = Command != "holddown"
Trigger1 = ctrl
Trigger1 = alive&&ctrl&&statetype!=A
Trigger2 = (stateno = 201)&& movecontact
Trigger3 = (stateno = 202)&& movecontact
trigger4 = (StateType = S) && (MoveContact) && (Var(0) > 0)
Value = 203
;---------------------------------------------------------------------------
;Hard Punch
[State -1,Hard Punch]
Type = ChangeState
Triggerall = Command = "x"
Triggerall = Command != "holddown"
Trigger1 = ctrl
Trigger1 = alive&&ctrl&&statetype!=A
Trigger2 = (stateno = 201)&& movecontact
Trigger3 = (stateno = 202)&& movecontact
Trigger4 = (stateno = 203)&& movecontact
trigger5 = (StateType = S) && (MoveContact) && (Var(0) > 0)
Value = 204
;---------------------------------------------------------------------------
;Hard Kick
[State -1,Hard Kick]
Type = ChangeState
Triggerall = Command = "y"
Triggerall = Command != "holddown"
Trigger1 = ctrl
Trigger1 = alive&&ctrl&&statetype!=A
Trigger2 = (stateno = 201)&& movecontact
Trigger3 = (stateno = 202)&& movecontact
Trigger4 = (stateno = 203)&& movecontact
trigger5 = (StateType = S) && (MoveContact) && (Var(0) > 0)
Value = 205
;---------------------------------------------------------------------------
;Punch Combo Slam
[State -1,Punch Combo Slam]
Type = ChangeState
Triggerall = Command = "x"
Triggerall = Command != "holddown"
Trigger1 = ctrl
Trigger1 = alive&&ctrl&&statetype!=A
Trigger2 = (stateno = 204)&& movecontact
trigger3 = (StateType = S) && (MoveContact) && (Var(0) > 0)
Value = 206
;---------------------------------------------------------------------------
;Kick Combo Slam
[State -1,Kick Combo Slam]
Type = ChangeState
Triggerall = Command = "y"
Triggerall = Command != "holddown"
Trigger1 = ctrl
Trigger1 = alive&&ctrl&&statetype!=A
Trigger2 = (stateno = 205)&& movecontact
trigger3 = (StateType = S) && (MoveContact) && (Var(0) > 0)
Value = 207
;---------------------------------------------------------------------------
;LaunchKiBall
[State -1,LaunchKiBall]
Type = ChangeState
Triggerall = Command = "z"
Triggerall = Command != "holddown"
Triggerall = power >= 250
Trigger1 = ctrl
Trigger1 = alive&&ctrl&&statetype!=A
Value = 208
;---------------------------------------------------------------------------
;LaunchKiBall
[State -1,LaunchKiBall]
Type = ChangeState
Triggerall = Command = "z"
Triggerall = Command != "holddown"
Triggerall = power >= 250
Trigger1 = ctrl
Trigger1 = alive&&ctrl&&statetype!=A
Trigger2 = StateNo = 208
Trigger2 = AnimElemTime(2) > 0
Value = 210
;---------------------------------------------------------------------------
;Final Flash
[state -1, Final Flash]
type = changestate
value = 214
triggerall = command = "Final Flash"
trigger1 = alive&&ctrl&&statetype!=A
trigger1 = power >= 1000
trigger1 = ctrl
;---------------------------------------------------------------------------
;Big Bang Attack
[state -1, Big Bang Attack]
type = changestate
value = 218
triggerall = command = "Big Bang Attack"
trigger1 = alive&&ctrl&&statetype!=A
trigger1 = power >= 2000
trigger1 = ctrl
;---------------------------------------------------------------------------
;Cancel
[State -1, Cancel]
type = ChangeState
value = 9000
triggerall =(Var(0) = 0)
trigger1 = (Command = "recovery") && (StateType = S) && (Ctrl)
;---------------------------------------------------------------------------
;Final Shine
[state -1, Final Shine]
type = changestate
value = 225
triggerall = command = "Final Shine"
trigger1 = alive&&ctrl&&statetype!=A
trigger1 = power >= 2000
trigger1 = ctrl
;---------------------------------------------------------------------------
;Kick Upper Launcher
[state -1, Kick Upper Launcher]
type = changestate
value = 230
triggerall = command = "b"
trigger1 = alive&&ctrl&&statetype!=A
trigger1 = ctrl
Trigger2 = (stateno = 203)&& movecontact
trigger3 = (StateType = S) && (MoveContact) && (Var(0) > 0)



