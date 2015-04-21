SystemOrganization addCategory: #OOP1!

Object subclass: #Course
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OOP1'!

Object subclass: #Course
	instanceVariableNames: 'id name day time isTwoHours Longs'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OOP1'!

Object subclass: #Course
	instanceVariableNames: 'm id name day time isTwoHours Longs'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OOP1'!

Object subclass: #Course
	instanceVariableNames: 'id name day time isTwoHours Longs'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OOP1'!

Course organization addCategory: #setter!
!Course methodsFor: 'setter' stamp: 'sa 4/6/2015 21:59'!
id:aid
	"comment stating purpose of message"
	id:=aid! !

Course organization addCategory: #'initialize-release'!
!Course methodsFor: 'initialize-release' stamp: 'sa 4/6/2015 22:03'!
initialize
	"comment stating purpose of message"
	id := '0'.
	name:=''.
 	day:=1.! !

Object subclass: #Course
	instanceVariableNames: 'id name day time isTwoHoursLong'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OOP1'!
!Course methodsFor: 'initialize-release' stamp: 'sa 4/6/2015 22:04' prior: 47815949!
initialize
	"comment stating purpose of message"
	id := '0'.
	name:=''.
 	day:=1.
	isTwoHoursLong:=false.! !
!Course methodsFor: 'setter' stamp: 'sa 4/6/2015 22:05' prior: 47815766!
id: aString
	"comment stating purpose of message"
	id:=aString! !
!Course methodsFor: 'setter' stamp: 'sa 4/6/2015 22:06'!
name:aString
	"comment stating purpose of message"
	name:=aString.! !
!Course methodsFor: 'setter' stamp: 'sa 4/6/2015 22:07'!
day:anInteger
	"comment stating purpose of message"
day:=anInteger! !
!Course methodsFor: 'setter' stamp: 'sa 4/6/2015 22:08'!
time:anInteger
	"comment stating purpose of message"
	time:=anInteger! !
!Course methodsFor: 'setter' stamp: 'sa 4/6/2015 22:08' prior: 47816827!
time:anInteger
	"comment stating purpose of message"
	time:=anInteger.! !
!Course methodsFor: 'setter' stamp: 'sa 4/6/2015 22:08' prior: 47816450!
id: aString
	"comment stating purpose of message"
	id:=aString.! !
!Course methodsFor: 'setter' stamp: 'sa 4/6/2015 22:08' prior: 47816700!
day:anInteger
	"comment stating purpose of message"
day:=anInteger.! !
!Course methodsFor: 'setter' stamp: 'sa 4/6/2015 22:09'!
isTwoHoursLong:aBoolean
	"comment stating purpose of message"

	isTwoHoursLong:=aBoolean! !
!Course methodsFor: 'setter' stamp: 'sa 4/6/2015 22:09' prior: 47817388!
isTwoHoursLong:aBoolean
	"comment stating purpose of message"

	isTwoHoursLong:=aBoolean.! !

|c1|
c1:=Course new.!

|c1|
c1:=Course new.!

Course organization addCategory: #getter!
!Course methodsFor: 'getter' stamp: 'sa 4/6/2015 22:22'!
id
	"comment stating purpose of message"
	^id.! !
!Course methodsFor: 'getter' stamp: 'sa 4/6/2015 22:23'!
name
	"comment stating purpose of message"
	^name.! !
!Course methodsFor: 'getter' stamp: 'sa 4/6/2015 22:23'!
day
	"comment stating purpose of message"
	^day.! !
!Course methodsFor: 'getter' stamp: 'sa 4/6/2015 22:23'!
time
	"comment stating purpose of message"
	^time.! !

Object subclass: #WeeklySchedule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OOP1'!

Object subclass: #WeeklySchedule
	instanceVariableNames: 'courses'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OOP1'!

WeeklySchedule organization addCategory: #'initialize-release'!
!WeeklySchedule methodsFor: 'initialize-release' stamp: 'sa 4/7/2015 22:28'!
initialize
	"comment stating purpose of message"
	courses:=Set new.! !

WeeklySchedule organization addCategory: #adding!
!WeeklySchedule methodsFor: 'adding' stamp: 'sa 4/7/2015 22:31'!
addCourse:aCourse
	"comment stating purpose of message"
	courses add:aCourse.! !

WeeklySchedule organization addCategory: #removing!
!WeeklySchedule methodsFor: 'adding' stamp: 'sa 4/7/2015 22:34'!
removeCourse:aString
	"comment stating purpose of message"
	courses:=aString.! !

WeeklySchedule organization addCategory: #comparing!
!WeeklySchedule methodsFor: 'adding' stamp: 'sa 4/7/2015 22:35'!
compareTo
	"comment stating purpose of message"
^true.! !
!WeeklySchedule methodsFor: 'adding' stamp: 'sa 4/7/2015 22:35' prior: 47819160!
compareTo
	"comment stating purpose of message"
	^true.! !

WeeklySchedule organization addCategory: #others!
!WeeklySchedule methodsFor: 'others' stamp: 'sa 4/7/2015 22:36'!
totalHours
	"comment stating purpose of message"
	^10.! !
!WeeklySchedule methodsFor: 'adding' stamp: 'sa 4/7/2015 22:36'!
compareTo: aSchedule
	"comment stating purpose of message"
	^true.! !

WeeklySchedule organization classify: #compareTo: under: #comparing!
!WeeklySchedule methodsFor: 'comparing' stamp: 'sa 4/7/2015 22:36' prior: 47819597!
compareTo: aSchedule
	"comment stating purpose of message"
	^true.! !

WeeklySchedule removeSelector: #compareTo!
!WeeklySchedule methodsFor: 'others' stamp: 'sa 4/7/2015 22:38'!
filterCourses:aBlock
	"comment stating purpose of message"

^[|x|x:=1].! !
!WeeklySchedule methodsFor: 'others' stamp: 'sa 4/7/2015 22:39'!
coursesOnDate: aDate
	"comment stating purpose of message"
^nil! !

|c1 ws|
c1:=Course new.
ws:= WeeklySchedule new.
Transcript show: ws totalHours ;cr.!

|c1 ws|
c1:=Course new.
ws:= WeeklySchedule new.
Transcript show: ws totalHours ;cr.1.!

|c1 ws|
c1:=Course new.
ws:= WeeklySchedule new.
Transcript show: ws totalHours ;cr.1.!