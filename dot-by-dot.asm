; adresse 0200 in Speicher 00 und 01 speichern
lda #$00   ;xpos
sta $0
lda #$02   ;ypos
sta $1

ldy #$0     ;y initialisieren

draw:
lda #$1    ; Wert 1 (weiss) in akku laden
; 1 an die Adresse aus Speicher 00+x schreiben
sta ($00), y
iny
jmp draw
