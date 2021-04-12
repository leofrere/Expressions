Class {
	#name : #ENegationTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
ENegationTest >> testCreationWithClassCreationMessage [
	self
		assert: ((ENegation expression: (EConstant value: 5)) evaluateWith: nil)
		equals: -5
]

{ #category : #tests }
ENegationTest >> testEvaluate [
	self
		assert:
			((ENegation new expression: (EConstant new value: 5))
				evaluateWith: nil)
		equals: -5
]

{ #category : #tests }
ENegationTest >> testNegated [
	self
		assert: ((EConstant new value: 5) negated negated evaluateWith: nil)
		equals: 5
]
