Class {
	#name : #ExpressionVisitor,
	#superclass : #Object,
	#category : #Expressions
}

{ #category : #visiting }
ExpressionVisitor >> visitEAddition: anEAddition [
	^ self subclassResponsibility
]

{ #category : #visiting }
ExpressionVisitor >> visitEConstant: anEConstant [
	^ self subclassResponsibility
]

{ #category : #visiting }
ExpressionVisitor >> visitEMultiplication: anEMultiplication [
	^ self subclassResponsibility
]

{ #category : #visiting }
ExpressionVisitor >> visitENegation: anEMultiplication [
	^ self subclassResponsibility
]

{ #category : #visiting }
ExpressionVisitor >> visitEVariable: anEVariable with: aDictionnary [
	^ self subclassResponsibility
]
