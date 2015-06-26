;
; Script Name:     XDCCadv (v1.0)
; Created by:      Rand (#NIBL @ Rizon)
;

on ^*:text:*:#nibl:{
  if ($nick ishop $chan) {
    haltdef
    var %w = @XDCCadv
    if (!$window(@XDCCadv)) { window -e %w }
    aline %w $timestamp > $chan - $nick : $1-
  }
}
