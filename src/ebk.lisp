;; ---------------------------------------------------------------------------
;; \file   ebk.lisp - Elektro Bau Kasten
;; \autor  (c) 2024 Jens Kallup - paule32
;;
;; \brief  Diese Dateu ist Teil des Elektro Bau Kasten.
;;         Alle Rechte vorbehalten.
;; ---------------------------------------------------------------------------

;; ---------------------------------------------------------------------------
;; \brief  Definition des XNOR-Gatters (t2000)
;; \param  a und b sind die Eingangs-Werte (0 oder 1)
;; \return 
;; ---------------------------------------------------------------------------
(defun t2000 (a b)      ; xnor gatter
    (if (equal a b)
        t
        nil))
;; ---------------------------------------------------------------------------
;; \brief  Definition des AND-Gatters (t2001)
;; \param  a und b sind die Eingangs-Werte (0 oder 1)
;; \return 
;; ---------------------------------------------------------------------------
(defun t2001 (a b)      ; nand gatter
    (if (not
        (and  a b))
        t
        nil))
;; ---------------------------------------------------------------------------
;; \brief  Definition des NOR-Gatters (t2002)
;; \param  a und b sind die Eingangs-Werte (0 oder 1)
;; \return 
;; ---------------------------------------------------------------------------
(defun t2002 (a b)      ; nor gatter
    (if (not
        (or   a b))
        t
        nil))
;; ---------------------------------------------------------------------------
;; \brief  Definition des XOR-Gatters (t2003)
;; \param  a und b sind die Eingangs-Werte (0 oder 1)
;; \return 
;; ---------------------------------------------------------------------------
(defun t2003 (a b)      ; xor gatter
    (if (and (or  a b)
        (not (and a b)))
        t
        nil))
;; ---------------------------------------------------------------------------
;; \brief  Definition des AND-Gatters (t2004)
;; \param  a und b sind die Eingangs-Werte (0 oder 1)
;; \return 
;; ---------------------------------------------------------------------------
(defun t2004 (a b)      ; and gatter
    (if (and a b)
        t
        nil))
;; ---------------------------------------------------------------------------
;; \brief   Definition des OR-Gatters (t2005)
;; \param   a und b sind die Eingangs-Werte (0 oder 1)
;; \return
;; ---------------------------------------------------------------------------
(defun t2005 (a b)      ; or gatter
    (if (or a b)
        t
        nil))
;; ---------------------------------------------------------------------------
;; \brief  Definition des NOT-Gatters (t2006)
;; \param  a - Eingang-Wert (0 oder 1)
;; \return true, wenn nicht; sonst nil
;; ---------------------------------------------------------------------------
(defun t2006 (a)        ; not gatter
    (if a
        nil
        t))

;; ---------------------------------------------------------------------------
;; \brief  Beispiel
;; \param  keine
;; \return kein Wert
;; ---------------------------------------------------------------------------
((t2010)    ; part id
 (1 2)      ; lhs = in; rhs = out
)

(sb:ext:quit)
