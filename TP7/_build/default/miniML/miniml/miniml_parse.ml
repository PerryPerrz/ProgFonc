type token =
  | EOF
  | OPEN
  | CLOSE
  | LBRACKET
  | RBRACKET
  | EMPTYLIST
  | SEMICOLON
  | LET
  | DOT
  | IN
  | REC
  | NEG
  | ASSIGN
  | COLONCOLON
  | COLONEQUAL
  | PLUS
  | MINUS
  | GET
  | TIMES
  | SET
  | GREATERTHAN
  | LESSTHAN
  | EQUALS
  | IF
  | THEN
  | ELSE
  | INCR
  | FUNCTION
  | COMMA
  | MATCH
  | RAISE
  | TRY
  | WITH
  | PIPE
  | FST
  | SND
  | ID of (string)
  | INT of (int)
  | TRUE
  | FALSE
  | TEE
  | BANG
  | REF

open Parsing;;
let _ = parse_error;;
# 3 "miniML/miniml/miniml_parse.mly"
  open Expr ;;

# 52 "miniML/miniml/miniml_parse.ml"
let yytransl_const = [|
    0 (* EOF *);
  257 (* OPEN *);
  258 (* CLOSE *);
  259 (* LBRACKET *);
  260 (* RBRACKET *);
  261 (* EMPTYLIST *);
  262 (* SEMICOLON *);
  263 (* LET *);
  264 (* DOT *);
  265 (* IN *);
  266 (* REC *);
  267 (* NEG *);
  268 (* ASSIGN *);
  269 (* COLONCOLON *);
  270 (* COLONEQUAL *);
  271 (* PLUS *);
  272 (* MINUS *);
  273 (* GET *);
  274 (* TIMES *);
  275 (* SET *);
  276 (* GREATERTHAN *);
  277 (* LESSTHAN *);
  278 (* EQUALS *);
  279 (* IF *);
  280 (* THEN *);
  281 (* ELSE *);
  282 (* INCR *);
  283 (* FUNCTION *);
  284 (* COMMA *);
  285 (* MATCH *);
  286 (* RAISE *);
  287 (* TRY *);
  288 (* WITH *);
  289 (* PIPE *);
  290 (* FST *);
  291 (* SND *);
  294 (* TRUE *);
  295 (* FALSE *);
  296 (* TEE *);
  297 (* BANG *);
  298 (* REF *);
    0|]

let yytransl_block = [|
  292 (* ID *);
  293 (* INT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\003\000\003\000\003\000\003\000\004\000\004\000\004\000\
\005\000\005\000\006\000\006\000\007\000\007\000\008\000\008\000\
\008\000\008\000\010\000\010\000\011\000\011\000\009\000\009\000\
\009\000\009\000\009\000\009\000\009\000\009\000\009\000\000\000"

let yylen = "\002\000\
\001\000\006\000\007\000\004\000\006\000\002\000\006\000\012\000\
\001\000\003\000\003\000\003\000\001\000\003\000\003\000\001\000\
\003\000\001\000\002\000\001\000\003\000\001\000\001\000\003\000\
\001\000\003\000\000\000\001\000\001\000\003\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\025\000\000\000\038\000\000\000\
\039\000\000\000\000\000\000\000\000\000\036\000\037\000\034\000\
\031\000\032\000\033\000\035\000\040\000\001\000\000\000\000\000\
\000\000\000\000\020\000\000\000\023\000\000\000\000\000\000\000\
\028\000\000\000\000\000\000\000\000\000\000\000\006\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\019\000\000\000\
\024\000\000\000\026\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\021\000\
\030\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\002\000\005\000\000\000\
\007\000\003\000\000\000\000\000\000\000\000\000\000\000\008\000"

let yydgoto = "\002\000\
\021\000\031\000\023\000\024\000\025\000\026\000\027\000\028\000\
\029\000\032\000\033\000"

let yysindex = "\020\000\
\255\254\000\000\255\254\255\254\000\000\007\255\000\000\255\254\
\000\000\243\254\255\254\255\254\255\254\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\254\254\248\254\
\011\255\046\255\000\000\004\255\000\000\025\255\035\255\038\255\
\000\000\008\255\023\255\024\255\042\255\026\255\000\000\027\255\
\046\255\046\255\046\255\046\255\046\255\046\255\000\000\046\255\
\000\000\255\254\000\000\039\255\255\254\255\254\255\254\055\255\
\028\255\248\254\248\254\248\254\011\255\011\255\046\255\000\000\
\000\000\255\254\053\255\041\255\000\000\059\255\061\255\062\255\
\255\254\255\254\255\254\255\254\255\254\000\000\000\000\037\255\
\000\000\000\000\051\255\060\255\052\255\066\255\255\254\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\087\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\250\000\165\000\
\090\000\040\000\000\000\001\000\000\000\000\000\088\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\190\000\215\000\240\000\115\000\140\000\065\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\002\000\000\000\011\000\223\255\047\000\239\255\000\000\
\000\000\000\000\044\000"

let yytablesize = 539
let yytable = "\003\000\
\022\000\004\000\022\000\005\000\030\000\006\000\044\000\045\000\
\047\000\036\000\061\000\062\000\038\000\039\000\040\000\007\000\
\034\000\041\000\042\000\043\000\001\000\008\000\037\000\046\000\
\009\000\010\000\049\000\011\000\012\000\013\000\064\000\048\000\
\014\000\015\000\016\000\017\000\018\000\019\000\020\000\018\000\
\050\000\051\000\035\000\052\000\053\000\047\000\003\000\054\000\
\004\000\055\000\005\000\058\000\059\000\060\000\067\000\068\000\
\069\000\056\000\057\000\070\000\066\000\073\000\007\000\071\000\
\017\000\074\000\075\000\072\000\076\000\083\000\077\000\009\000\
\085\000\087\000\078\000\079\000\080\000\081\000\082\000\014\000\
\015\000\016\000\017\000\018\000\019\000\020\000\084\000\086\000\
\088\000\016\000\027\000\029\000\063\000\065\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\014\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\015\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\013\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\012\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\011\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\010\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\009\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\022\000\022\000\022\000\022\000\022\000\022\000\000\000\
\000\000\022\000\000\000\000\000\000\000\022\000\000\000\022\000\
\022\000\022\000\000\000\000\000\022\000\022\000\022\000\000\000\
\022\000\022\000\022\000\000\000\000\000\000\000\000\000\000\000\
\022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
\022\000\018\000\000\000\018\000\000\000\018\000\000\000\000\000\
\018\000\000\000\000\000\000\000\018\000\000\000\018\000\018\000\
\000\000\000\000\000\000\018\000\018\000\018\000\000\000\018\000\
\018\000\000\000\017\000\000\000\017\000\000\000\017\000\018\000\
\018\000\017\000\000\000\000\000\000\000\017\000\000\000\017\000\
\017\000\000\000\000\000\000\000\017\000\017\000\017\000\000\000\
\017\000\017\000\000\000\016\000\000\000\016\000\000\000\016\000\
\017\000\017\000\016\000\000\000\000\000\000\000\000\000\000\000\
\016\000\016\000\000\000\000\000\000\000\016\000\016\000\016\000\
\000\000\016\000\016\000\000\000\014\000\000\000\014\000\000\000\
\014\000\016\000\016\000\014\000\000\000\000\000\000\000\000\000\
\000\000\014\000\014\000\000\000\000\000\000\000\014\000\014\000\
\014\000\000\000\014\000\014\000\000\000\015\000\000\000\015\000\
\000\000\015\000\014\000\014\000\015\000\000\000\000\000\000\000\
\000\000\000\000\015\000\015\000\000\000\000\000\000\000\015\000\
\015\000\015\000\000\000\015\000\015\000\000\000\013\000\000\000\
\013\000\000\000\013\000\015\000\015\000\013\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\013\000\013\000\013\000\000\000\013\000\013\000\000\000\012\000\
\000\000\012\000\000\000\012\000\013\000\013\000\012\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\012\000\012\000\012\000\000\000\012\000\012\000\000\000\
\011\000\000\000\011\000\000\000\011\000\012\000\012\000\011\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\011\000\011\000\011\000\000\000\011\000\011\000\
\000\000\010\000\000\000\010\000\000\000\010\000\011\000\011\000\
\010\000\000\000\000\000\009\000\000\000\009\000\000\000\009\000\
\000\000\000\000\009\000\010\000\010\000\010\000\000\000\010\000\
\010\000\000\000\000\000\000\000\000\000\000\000\000\000\010\000\
\010\000\009\000\009\000\000\000\000\000\000\000\000\000\000\000\
\000\000\009\000\009\000"

let yycheck = "\001\001\
\000\000\003\001\001\000\005\001\003\000\007\001\015\001\016\001\
\026\000\008\000\044\000\045\000\011\000\012\000\013\000\017\001\
\010\001\020\001\021\001\022\001\001\000\023\001\036\001\013\001\
\026\001\027\001\002\001\029\001\030\001\031\001\048\000\028\001\
\034\001\035\001\036\001\037\001\038\001\039\001\040\001\000\000\
\006\001\004\001\036\001\036\001\022\001\063\000\001\001\024\001\
\003\001\008\001\005\001\041\000\042\000\043\000\053\000\054\000\
\055\000\032\001\032\001\005\001\022\001\009\001\017\001\036\001\
\000\000\025\001\008\001\066\000\008\001\033\001\009\001\026\001\
\013\001\008\001\073\000\074\000\075\000\076\000\077\000\034\001\
\035\001\036\001\037\001\038\001\039\001\040\001\036\001\036\001\
\087\000\000\000\004\001\004\001\046\000\050\000\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\000\000\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\000\000\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\000\000\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\000\000\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\000\000\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\000\000\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\000\000\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\001\001\002\001\003\001\004\001\005\001\006\001\255\255\
\255\255\009\001\255\255\255\255\255\255\013\001\255\255\015\001\
\016\001\017\001\255\255\255\255\020\001\021\001\022\001\255\255\
\024\001\025\001\026\001\255\255\255\255\255\255\255\255\255\255\
\032\001\033\001\034\001\035\001\036\001\037\001\038\001\039\001\
\040\001\002\001\255\255\004\001\255\255\006\001\255\255\255\255\
\009\001\255\255\255\255\255\255\013\001\255\255\015\001\016\001\
\255\255\255\255\255\255\020\001\021\001\022\001\255\255\024\001\
\025\001\255\255\002\001\255\255\004\001\255\255\006\001\032\001\
\033\001\009\001\255\255\255\255\255\255\013\001\255\255\015\001\
\016\001\255\255\255\255\255\255\020\001\021\001\022\001\255\255\
\024\001\025\001\255\255\002\001\255\255\004\001\255\255\006\001\
\032\001\033\001\009\001\255\255\255\255\255\255\255\255\255\255\
\015\001\016\001\255\255\255\255\255\255\020\001\021\001\022\001\
\255\255\024\001\025\001\255\255\002\001\255\255\004\001\255\255\
\006\001\032\001\033\001\009\001\255\255\255\255\255\255\255\255\
\255\255\015\001\016\001\255\255\255\255\255\255\020\001\021\001\
\022\001\255\255\024\001\025\001\255\255\002\001\255\255\004\001\
\255\255\006\001\032\001\033\001\009\001\255\255\255\255\255\255\
\255\255\255\255\015\001\016\001\255\255\255\255\255\255\020\001\
\021\001\022\001\255\255\024\001\025\001\255\255\002\001\255\255\
\004\001\255\255\006\001\032\001\033\001\009\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\020\001\021\001\022\001\255\255\024\001\025\001\255\255\002\001\
\255\255\004\001\255\255\006\001\032\001\033\001\009\001\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\020\001\021\001\022\001\255\255\024\001\025\001\255\255\
\002\001\255\255\004\001\255\255\006\001\032\001\033\001\009\001\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\020\001\021\001\022\001\255\255\024\001\025\001\
\255\255\002\001\255\255\004\001\255\255\006\001\032\001\033\001\
\009\001\255\255\255\255\002\001\255\255\004\001\255\255\006\001\
\255\255\255\255\009\001\020\001\021\001\022\001\255\255\024\001\
\025\001\255\255\255\255\255\255\255\255\255\255\255\255\032\001\
\033\001\024\001\025\001\255\255\255\255\255\255\255\255\255\255\
\255\255\032\001\033\001"

let yynames_const = "\
  EOF\000\
  OPEN\000\
  CLOSE\000\
  LBRACKET\000\
  RBRACKET\000\
  EMPTYLIST\000\
  SEMICOLON\000\
  LET\000\
  DOT\000\
  IN\000\
  REC\000\
  NEG\000\
  ASSIGN\000\
  COLONCOLON\000\
  COLONEQUAL\000\
  PLUS\000\
  MINUS\000\
  GET\000\
  TIMES\000\
  SET\000\
  GREATERTHAN\000\
  LESSTHAN\000\
  EQUALS\000\
  IF\000\
  THEN\000\
  ELSE\000\
  INCR\000\
  FUNCTION\000\
  COMMA\000\
  MATCH\000\
  RAISE\000\
  TRY\000\
  WITH\000\
  PIPE\000\
  FST\000\
  SND\000\
  TRUE\000\
  FALSE\000\
  TEE\000\
  BANG\000\
  REF\000\
  "

let yynames_block = "\
  ID\000\
  INT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 35 "miniML/miniml/miniml_parse.mly"
              ( _1 )
# 360 "miniML/miniml/miniml_parse.ml"
               : Expr.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 37 "miniML/miniml/miniml_parse.mly"
                                   ( Let(_2, _4, _6) )
# 369 "miniML/miniml/miniml_parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 38 "miniML/miniml/miniml_parse.mly"
                                       ( Letrec(_3, _5, _7) )
# 378 "miniML/miniml/miniml_parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 39 "miniML/miniml/miniml_parse.mly"
                             ( Fun(_2, _4) )
# 386 "miniML/miniml/miniml_parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 40 "miniML/miniml/miniml_parse.mly"
                                         ( If(_2, _4, _6) )
# 395 "miniML/miniml/miniml_parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 41 "miniML/miniml/miniml_parse.mly"
                   ( Raise(_2) )
# 402 "miniML/miniml/miniml_parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 42 "miniML/miniml/miniml_parse.mly"
                                  ( Try(_2,_4,_6) )
# 411 "miniML/miniml/miniml_parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 10 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 6 : 'expr) in
    let _8 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _10 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _12 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 43 "miniML/miniml/miniml_parse.mly"
                                                                          ( Match(_2,_6,_8,_10,_12) )
# 422 "miniML/miniml/miniml_parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp2) in
    Obj.repr(
# 44 "miniML/miniml/miniml_parse.mly"
             ( _1 )
# 429 "miniML/miniml/miniml_parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp2) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp3) in
    Obj.repr(
# 47 "miniML/miniml/miniml_parse.mly"
                         ( Eq(_1, _3) )
# 437 "miniML/miniml/miniml_parse.ml"
               : 'exp2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp2) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp3) in
    Obj.repr(
# 48 "miniML/miniml/miniml_parse.mly"
                              ( Less(_1, _3) )
# 445 "miniML/miniml/miniml_parse.ml"
               : 'exp2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp2) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp3) in
    Obj.repr(
# 49 "miniML/miniml/miniml_parse.mly"
                                 ( Greater(_1, _3) )
# 453 "miniML/miniml/miniml_parse.ml"
               : 'exp2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp3) in
    Obj.repr(
# 50 "miniML/miniml/miniml_parse.mly"
              ( _1 )
# 460 "miniML/miniml/miniml_parse.ml"
               : 'exp2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp3) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp4) in
    Obj.repr(
# 53 "miniML/miniml/miniml_parse.mly"
                       ( Plus(_1, _3) )
# 468 "miniML/miniml/miniml_parse.ml"
               : 'exp3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp3) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp4) in
    Obj.repr(
# 54 "miniML/miniml/miniml_parse.mly"
                      ( Minus(_1, _3) )
# 476 "miniML/miniml/miniml_parse.ml"
               : 'exp3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp4) in
    Obj.repr(
# 55 "miniML/miniml/miniml_parse.mly"
         ( _1 )
# 483 "miniML/miniml/miniml_parse.ml"
               : 'exp3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp4) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp_app) in
    Obj.repr(
# 58 "miniML/miniml/miniml_parse.mly"
                                ( Cons(_1, _3))
# 491 "miniML/miniml/miniml_parse.ml"
               : 'exp4))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp_app) in
    Obj.repr(
# 59 "miniML/miniml/miniml_parse.mly"
                   ( _1 )
# 498 "miniML/miniml/miniml_parse.ml"
               : 'exp4))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'exp_app) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp5) in
    Obj.repr(
# 61 "miniML/miniml/miniml_parse.mly"
                      ( App(_1, _2) )
# 506 "miniML/miniml/miniml_parse.ml"
               : 'exp_app))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp5) in
    Obj.repr(
# 62 "miniML/miniml/miniml_parse.mly"
                ( _1 )
# 513 "miniML/miniml/miniml_parse.ml"
               : 'exp_app))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp6) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp5) in
    Obj.repr(
# 64 "miniML/miniml/miniml_parse.mly"
                      ( Pair(_1, _3) )
# 521 "miniML/miniml/miniml_parse.ml"
               : 'exp5))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp6) in
    Obj.repr(
# 65 "miniML/miniml/miniml_parse.mly"
                ( _1 )
# 528 "miniML/miniml/miniml_parse.ml"
               : 'exp5))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'constant) in
    Obj.repr(
# 67 "miniML/miniml/miniml_parse.mly"
                   ( _1 )
# 535 "miniML/miniml/miniml_parse.ml"
               : 'exp6))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 68 "miniML/miniml/miniml_parse.mly"
                          ( _2 )
# 542 "miniML/miniml/miniml_parse.ml"
               : 'exp6))
; (fun __caml_parser_env ->
    Obj.repr(
# 69 "miniML/miniml/miniml_parse.mly"
             ( Nil )
# 548 "miniML/miniml/miniml_parse.ml"
               : 'exp6))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exprlist) in
    Obj.repr(
# 70 "miniML/miniml/miniml_parse.mly"
                                     ( _2 )
# 555 "miniML/miniml/miniml_parse.ml"
               : 'exp6))
; (fun __caml_parser_env ->
    Obj.repr(
# 72 "miniML/miniml/miniml_parse.mly"
                       ( Nil )
# 561 "miniML/miniml/miniml_parse.ml"
               : 'exprlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'nonemptyexprlist) in
    Obj.repr(
# 73 "miniML/miniml/miniml_parse.mly"
                           ( _1 )
# 568 "miniML/miniml/miniml_parse.ml"
               : 'exprlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 75 "miniML/miniml/miniml_parse.mly"
                       ( Cons(_1, Nil) )
# 575 "miniML/miniml/miniml_parse.ml"
               : 'nonemptyexprlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'nonemptyexprlist) in
    Obj.repr(
# 76 "miniML/miniml/miniml_parse.mly"
                                                   ( Cons(_1, _3))
# 583 "miniML/miniml/miniml_parse.ml"
               : 'nonemptyexprlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 80 "miniML/miniml/miniml_parse.mly"
                ( Num _1 )
# 590 "miniML/miniml/miniml_parse.ml"
               : 'constant))
; (fun __caml_parser_env ->
    Obj.repr(
# 81 "miniML/miniml/miniml_parse.mly"
          ( Bool true )
# 596 "miniML/miniml/miniml_parse.ml"
               : 'constant))
; (fun __caml_parser_env ->
    Obj.repr(
# 82 "miniML/miniml/miniml_parse.mly"
           ( Bool false )
# 602 "miniML/miniml/miniml_parse.ml"
               : 'constant))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 83 "miniML/miniml/miniml_parse.mly"
               ( Var _1 )
# 609 "miniML/miniml/miniml_parse.ml"
               : 'constant))
; (fun __caml_parser_env ->
    Obj.repr(
# 84 "miniML/miniml/miniml_parse.mly"
                                ( Tee )
# 615 "miniML/miniml/miniml_parse.ml"
               : 'constant))
; (fun __caml_parser_env ->
    Obj.repr(
# 85 "miniML/miniml/miniml_parse.mly"
                                ( Fst )
# 621 "miniML/miniml/miniml_parse.ml"
               : 'constant))
; (fun __caml_parser_env ->
    Obj.repr(
# 86 "miniML/miniml/miniml_parse.mly"
                                ( Snd )
# 627 "miniML/miniml/miniml_parse.ml"
               : 'constant))
; (fun __caml_parser_env ->
    Obj.repr(
# 87 "miniML/miniml/miniml_parse.mly"
        ( Get )
# 633 "miniML/miniml/miniml_parse.ml"
               : 'constant))
; (fun __caml_parser_env ->
    Obj.repr(
# 88 "miniML/miniml/miniml_parse.mly"
         ( Incr )
# 639 "miniML/miniml/miniml_parse.ml"
               : 'constant))
(* Entry input *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let input (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Expr.expr)
;;
