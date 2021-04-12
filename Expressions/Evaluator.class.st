Class {
	#name : #Evaluator,
	#superclass : #ExpressionVisitor,
	#category : #Expressions
}

{ #category : #visiting }
Evaluator >> visitEAddition: anEAddition [
	^ (anEAddition left acceptVisitor: self) + (anEAddition right acceptVisitor: self)
]

{ #category : #visiting }
Evaluator >> visitEConstant: anEConstant [
	^ anEConstant value
]

{ #category : #visiting }
Evaluator >> visitEMultiplication: anEMultiplication [
	^ (anEMultiplication left acceptVisitor: self) * (anEMultiplication right acceptVisitor: self) 
]

{ #category : #visiting }
Evaluator >> visitENegation: anENegation [
	^ (anENegation expression acceptVisitor: self) negated
]

{ #category : #visiting }
Evaluator >> visitEVariable: anEVariable [
	^ anEVariable id
]

{ #category : #visiting }
Evaluator >> visitEVariable: anEVariable with: aDictionnary [
	^ aDictionnary at: anEVariable id
]
