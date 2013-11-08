; adresse 0200 in Speicher 00 und 01 speichern
lda #$00   ;xpos
sta $0
lda #$02   ;ypos
sta $1
lda #$00   ;y counter
sta $3

ldy $3     ;y initialisieren

draw:
lda $03
cmp #$ff
beq newLine

lda #$3    ; Wert 3 (t�rkis) in akku laden
; 1 an die Adresse aus Speicher 00+y schreiben
sta ($00), y
iny
sty $03    ;y zwischenspeichern, wenn gr�sser als               256, dann ypos inc

jmp draw

newLine:
lda #$3
sta ($00), y

ldx $1
inx
stx $1

ldy #$0 ;reset y
sty $03

jmp draw
