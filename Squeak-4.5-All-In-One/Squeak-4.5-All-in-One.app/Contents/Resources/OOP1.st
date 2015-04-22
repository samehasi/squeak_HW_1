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
	time:=anInteger.! !!Course methodsFor: 'initialize-release' stamp: 'koko 4/22/2015 02:11'!initialize
	"comment stating purpose of message"
	id := String new.	id:='0'.
	name:=''.	.
 	day:=1.	 	time:=8.
	isTwoHoursLong:=false.! !!Course methodsFor: 'getter' stamp: 'sa 4/6/2015 22:23'!day
	"comment stating purpose of message"
	^day.! !!Course methodsFor: 'getter' stamp: 'sa 4/6/2015 22:22'!id
	"comment stating purpose of message"
	^id.! !!Course methodsFor: 'getter' stamp: 'koko 4/21/2015 22:42'!isTwoHoursLong	"comment stating purpose of message"^isTwoHoursLong.! !!Course methodsFor: 'getter' stamp: 'sa 4/6/2015 22:23'!name
	"comment stating purpose of message"
	^name.! !!Course methodsFor: 'getter' stamp: 'sa 4/6/2015 22:23'!time
	"comment stating purpose of message"
	^time.! !!Course methodsFor: 'comparing' stamp: 'koko 4/22/2015 18:17'!= arg	"comment stating purpose of message"|x y ret|((arg = nil) or:[self = nil])ifTrue:[^false].x:= String new.y:=String new.x:=arg id.y:=self id.	(x = y) ifTrue: [ret:=true]ifFalse:[ret:=false].^ret.! !!Course methodsFor: 'comparing' stamp: 'koko 4/22/2015 01:05'!hash	"comment stating purpose of message"	^((self id) hash)! !!Course methodsFor: 'as yet unclassified' stamp: 'koko 4/22/2015 17:53'!colidsWith: aCourse	"comment stating purpose of message"(aCourse day = self day) ifFalse:[^false].(aCourse time = self time) ifTrue:[^true].((self time = ((aCourse time)+1)) and:[aCourse isTwoHoursLong ]) ifTrue:[^true]. ((aCourse time = ((self time)+1)) and:[self isTwoHoursLong ]) ifTrue:[^true]. ^false.! !Object subclass: #WeeklySchedule	instanceVariableNames: 'courses'	classVariableNames: ''	poolDictionaries: ''	category: 'OOP1'!!WeeklySchedule methodsFor: 'initialize-release' stamp: 'sa 4/7/2015 22:28'!initialize
	"comment stating purpose of message"
	courses:=Set new.! !!WeeklySchedule methodsFor: 'adding' stamp: 'koko 4/22/2015 17:51'!addCourse:aCourse
	"comment stating purpose of message"|temp|temp := aCourse deepCopy.courses do:[:each| ((temp id = each id) or:[temp colidsWith: each]) ifTrue:[self error: 'cannot add course']].
	courses add:aCourse.! !!WeeklySchedule methodsFor: 'adding' stamp: 'koko 4/21/2015 23:16'!removeCourse:aString
	"comment stating purpose of message"|temp|temp:=Course new.temp id:aString.courses do:[:course|(temp=course) ifTrue:[courses remove:temp ifAbsent:[]]].! !!WeeklySchedule methodsFor: 'comparing' stamp: 'koko 4/22/2015 18:04'!compareTo: aSchedule
	"comment stating purpose of message"
	|block set x ret|set:=Set new.block:= aSchedule filterCourses:[:dummy|true].x:=block value.[x~=nil]whileTrue:[set add: x.x:=block value].ret := (set=courses).^ret.! !!WeeklySchedule methodsFor: 'others' stamp: 'koko 4/22/2015 16:46'!courses	"comment stating purpose of message"	^courses.! !!WeeklySchedule methodsFor: 'others' stamp: 'koko 4/22/2015 02:01'!coursesOnDate: aDate
	"comment stating purpose of message"
|ret|ret:= self filterCourses: [:course| (course day = aDate weekdayIndex)].^ret.! !!WeeklySchedule methodsFor: 'others' stamp: 'koko 4/22/2015 01:49'!filterCourses:aBlock
	"comment stating purpose of message"
|ret stack|ret:= OrderedCollection  new.courses do:[:each|(aBlock value:each) ifTrue:[ret addFirst: each]].ret sort:[:first :second | first day > second day or: [(first day = second day) and: [(first time) > (second time)]]].stack := Stack new.ret do:[:each2 |stack push:each2].^[(stack isEmpty) ifTrue:[nil] ifFalse:[stack pop]]! !!WeeklySchedule methodsFor: 'others' stamp: 'koko 4/21/2015 22:37'!totalHours
	"comment stating purpose of message"
	|ret|ret:=0.courses do:[:course|(course isTwoHoursLong ) ifTrue:[ret:= (ret+2)]ifFalse: [ret:=(ret+1)]].^ret.! !