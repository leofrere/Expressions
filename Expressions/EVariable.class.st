Class {
	#name : #EVariable,
	#superclass : #EExpression,
	#instVars : [
		'id'
	],
	#category : #Expressions
}

{ #category : #visiting }
EVariable >> acceptVisitor: aVisitor [
	^ aVisitor visitEVariable: self
]

{ #category : #getter }
EVariable >> evaluateWith: aDictionnary [ 
	^ aDictionnary at: id.
]

{ #category : #getter }
EVariable >> id [
	^ id
]

{ #category : #setter }
EVariable >> id: aSymbole [
	id := aSymbole.
]

{ #category : #printing }
EVariable >> printOn: aStream [
	aStream nextPutAll: id asString
]
