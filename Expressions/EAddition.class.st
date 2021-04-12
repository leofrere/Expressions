Class {
	#name : #EAddition,
	#superclass : #EBinaryExpression,
	#category : #Expressions
}

{ #category : #'instance creation' }
EAddition class >> left: anExp right: anExp2 [
	^ self new left: anExp; right: anExp2
]

{ #category : #visiting }
EAddition >> acceptVisitor: aVisitor [
	^ aVisitor visitEAddition: self
]

{ #category : #getter }
EAddition >> evaluateWith: aDictionnary [ 
	^ (right evaluateWith: aDictionnary ) + (left evaluateWith: aDictionnary )
]

{ #category : #getter }
EAddition >> negated [
	^ ENegation new expression: self.
]

{ #category : #printing }
EAddition >> operatorString [
	^ ' + ' 
]
