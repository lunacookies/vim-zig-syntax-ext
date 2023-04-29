syntax clear
let b:current_syntax = 'zig'

syntax keyword zxUnderscore _

syntax match zxDelimiter '[{}()\[\]|;]'
syntax match zxOperator '[+\-*/&!=<>?|%]'

syntax match zxFunction '\v<[a-z][a-zA-Z0-9_]*(\()@='
syntax match zxFieldOrEnum '\v(\s+)@<=\.[a-z][a-zA-Z0-9_]*>'
syntax match zxIdentifierDef '\v((var|const)\s+)@<=<[a-zA-Z][a-zA-Z0-9_]*>'
syntax match zxBuiltinFunction '\v\@[a-zA-Z][a-zA-Z0-9_]*>'
syntax match zxBuiltinField '\v(\.)@<=<(len|ptr)>'

syntax region zxStringIdentifier
	\ matchgroup=zxStringIdentifierDelimiter
	\ start='@"'
	\ skip='\\"'
	\ end='"'

syntax region zxCapture
	\ matchgroup=zxDelimiter
	\ start=' |'
	\ end='|'
syntax match zxCaptureIdentifier '\v<[a-zA-Z][a-zA-Z0-9_]*>'
	\ contained
	\ containedin=zxCapture

syntax match zxUserType '\v<[A-Z][a-zA-Z0-9_]*>'
syntax match zxBuiltinType '\v<[uif]([0-9]|size)+>'
syntax keyword zxBuiltinType bool anytype type void

syntax keyword zxBoolean true false
syntax keyword zxBuiltinConstant null unreachable undefined

syntax keyword zxConditional if else switch and or orelse
syntax keyword zxRepeat for while continue

syntax keyword zxException error try catch

syntax keyword zxKeyword pub fn const var defer return break yield inline test comptime
syntax keyword zxStructure struct enum union

syntax match zxNumber '\v<[0-9]+(\.[0-9]+)?>'

syntax region zxString
	\ matchgroup=zxStringQuote
	\ start='"'
	\ skip='\\"'
	\ end='"'
	\ contains=@Spell
syntax region zxString
	\ matchgroup=zxStringQuote
	\ start='\\\\'
	\ end='$'
	\ contains=@Spell

syntax region zxChar
	\ matchgroup=zxCharQuote
	\ start="'"
	\ skip="\\'"
	\ end="'"
	\ contains=@Spell

syntax match zxComment '//.*$'

highlight default link zxUnderscore Special
highlight default link zxDelimiter Delimiter
highlight default link zxOperator Operator
highlight default link zxFunction Function
highlight default link zxFieldOrEnum Constant
highlight default link zxIdentifierDef zxIdentifier
highlight default link zxIdentifier Identifier
highlight default link zxBuiltinFunction Special
highlight default link zxBuiltinField Special
highlight default link zxUserType Type
highlight default link zxBuiltinType Type
highlight default link zxBoolean Boolean
highlight default link zxBuiltinConstant Constant
highlight default link zxConditional Conditional
highlight default link zxRepeat Repeat
highlight default link zxException Exception
highlight default link zxKeyword Keyword
highlight default link zxStructure Structure
highlight default link zxStringIdentifier zxIdentifier
highlight default link zxStringIdentifierDelimiter zxStringIdentifier
highlight default link zxCaptureIdentifier zxIdentifierDef
highlight default link zxNumber Number
highlight default link zxString String
highlight default link zxStringQuote StringDelimiter
highlight default link zxChar Character
highlight default link zxCharQuote Character
highlight default link zxComment Comment

highlight default link StringDelimiter String
