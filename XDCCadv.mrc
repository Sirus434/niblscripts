;
; Script Name:     XDCCadv (v1.0) Basic
; Created by:      Rand (#NIBL @ Rizon)
;
; Usage: Place into mIRC script folder (Should be C:\Users\username\AppData\Roaming\mIRC\scripts
;        /load -rs scripts\XDCCadv.mrc
;        
; Description: Puts all XDCC announces from XDCC bots located in #NIBL into its own Query window, cleaning up the chat
; and makingi t easier for you to catch what you want.

on ^*:text:*:#nibl:{
  if ($nick ishop $chan) {
    haltdef
    var %w = @XDCCadv
    if (!$window(@XDCCadv)) { window -e %w }
    aline %w $timestamp > $chan - $nick : $1-
  }
}
