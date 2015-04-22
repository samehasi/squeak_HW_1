Object subclass: #Course	instanceVariableNames: 'id name day time isTwoHoursLong'	classVariableNames: ''	poolDictionaries: ''	category: 'OOP1'!!Course methodsFor: 'setter' stamp: 'sa 4/6/2015 22:08'!day:anInteger
	"comment stating purpose of message"
day:=anInteger.! !!Course methodsFor: 'setter' stamp: 'sa 4/6/2015 22:08'!id: aString
	"comment stating purpose of message"
	id:=aString.! !!Course methodsFor: 'setter' stamp: 'sa 4/6/2015 22:09'!isTwoHoursLong:aBoolean
	"comment stating purpose of message"

	isTwoHoursLong:=aBoolean.! !!Course methodsFor: 'setter' stamp: 'sa 4/6/2015 22:06'!name:aString
	"comment stating purpose of message"
	name:=aString.! !!Course methodsFor: 'setter' stamp: 'sa 4/6/2015 22:08'!time:anInteger
	"comment stating purpose of message"
	time:=anInteger.! !!Course methodsFor: 'initialize-release' stamp: 'koko 4/21/2015 21:50'!initialize
	"comment stating purpose of message"
	id := String new.	id:='1'.
	name:=''.
 	day:=1.
	isTwoHoursLong:=false.! !!Course methodsFor: 'getter' stamp: 'sa 4/6/2015 22:23'!day
	"comment stating purpose of message"
	^day.! !!Course methodsFor: 'getter' stamp: 'sa 4/6/2015 22:22'!id
	"comment stating purpose of message"
	^id.! !!Course methodsFor: 'getter' stamp: 'koko 4/21/2015 22:42'!isTwoHoursLong	"comment stating purpose of message"^isTwoHoursLong.! !!Course methodsFor: 'getter' stamp: 'sa 4/6/2015 22:23'!name
	"comment stating purpose of message"
	^name.! !!Course methodsFor: 'getter' stamp: 'sa 4/6/2015 22:23'!time
	"comment stating purpose of message"
	^time.! !!Course methodsFor: 'comparing' stamp: 'koko 4/21/2015 21:54'!= arg	"comment stating purpose of message"|x y ret|x:= String new.y:=String new.x:=arg id.y:=self id.	(x = y) ifTrue: [ret:=true]ifFalse:[ret:=false].^ret.! !Object subclass: #WeeklySchedule	instanceVariableNames: 'courses'	classVariableNames: ''	poolDictionaries: ''	category: 'OOP1'!!WeeklySchedule methodsFor: 'initialize-release' stamp: 'sa 4/7/2015 22:28'!initialize
	"comment stating purpose of message"
	courses:=Set new.! !!WeeklySchedule methodsFor: 'adding' stamp: 'sa 4/7/2015 22:31'!addCourse:aCourse
	"comment stating purpose of message"
	courses add:aCourse.! !!WeeklySchedule methodsFor: 'adding' stamp: 'sa 4/7/2015 22:34'!removeCourse:aString
	"comment stating purpose of message"
	courses:=aString.! !!WeeklySchedule methodsFor: 'comparing' stamp: 'sa 4/7/2015 22:36'!compareTo: aSchedule
	"comment stating purpose of message"
	^true.! !!WeeklySchedule methodsFor: 'others' stamp: 'sa 4/7/2015 22:39'!coursesOnDate: aDate
	"comment stating purpose of message"
^nil! !!WeeklySchedule methodsFor: 'others' stamp: 'sa 4/7/2015 22:38'!filterCourses:aBlock
	"comment stating purpose of message"

^[|x|x:=1].! !!WeeklySchedule methodsFor: 'others' stamp: 'koko 4/21/2015 22:37'!totalHours
	"comment stating purpose of message"
	|ret|ret:=0.courses do:[:course|(course isTwoHoursLong ) ifTrue:[ret:= (ret+2)]ifFalse: [ret:=(ret+1)]].^ret.! !