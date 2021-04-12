Class {
	#name : #Printer,
	#superclass : #ExpressionVisitor,
	#category : #Expressions
}

{ #category : #visiting }
Printer >> visitEAddition: anEAddition [
	^ '( ', ((anEAddition left) acceptVisitor: self) ,anEAddition operatorString, ((anEAddition right) acceptVisitor: self) ,' )'
]

{ #category : #visiting }
Printer >> visitEConstant: anEConstant [
	^ anEConstant value printString
]

{ #category : #visiting }
Printer >> visitEMultiplication: anEMultiplication [
	^ '( ', ((anEMultiplication left) acceptVisitor: self) ,anEMultiplication operatorString, ((anEMultiplication right) acceptVisitor: self) ,' )'
]

{ #category : #visiting }
Printer >> visitENegation: anENegation [
   ^ ('- ',	(anENegation expression acceptVisitor: self)).
]

{ #category : #visiting }
Printer >> visitEVariable: anEVariable [
	^ anEVariable id printString
]

{ #category : #visiting }
Printer >> visitEVariable: anEVariable with: aDictionnary [
	^ self 
]
