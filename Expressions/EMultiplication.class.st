Class {
	#name : #EMultiplication,
	#superclass : #EBinaryExpression,
	#category : #Expressions
}

{ #category : #'instance creation' }
EMultiplication class >> left: anExp right: anExp2 [
	^ self new left: anExp; right: anExp2
]

{ #category : #visiting }
EMultiplication >> acceptVisitor: aVisitor [
	^ aVisitor visitEMultiplication: self
]

{ #category : #getter }
EMultiplication >> evaluateWith: aDictionnary [ 
	^ (right evaluateWith: aDictionnary ) * (left evaluateWith: aDictionnary )
]

{ #category : #getter }
EMultiplication >> negated [
	^ ENegation  new expression: self.
]

{ #category : #printing }
EMultiplication >> operatorString [
	^ ' * '
]
