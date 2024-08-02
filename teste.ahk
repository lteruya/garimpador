clip := A_Clipboard
regex := "m)Endereço.*:(.*)`r"
pos := RegExMatch(clip, regex, &Match)
while pos > 0 {
    MsgBox(Match[1])
    startingPos := Match.Len + pos
    pos := RegExMatch(clip, "m)Endereço.*:(.*)CEP", &Match, startingPos)
}