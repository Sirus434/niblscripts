;
; Script Name:     XDCCadv (v1.0) Basic
; Created by:      Rand (#NIBL @ Rizon)
;
; Usage: /load -rs scripts\XDCCadv.mrc
; Puts all XDCC announces from XDCC bots located in #NIBL its own Query window, cleaning up the chat
; and makingi t easier for you to catch what you want.

on ^*:text:*:#nibl:{
  if ($nick ishop $chan) {
    haltdef
    var %w = @XDCCadv
    if (!$window(@XDCCadv)) { window -e %w }
    aline %w $timestamp > $chan - $nick : $1-
  }
}
