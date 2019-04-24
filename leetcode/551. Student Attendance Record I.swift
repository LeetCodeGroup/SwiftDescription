/**
 Questin:
 You are given a string representing an attendance record for a student. The record only contains the following three characters:
 
 1.'A' : Absent.
 2.'L' : Late.
 3.'P' : Present.
 A student could be rewarded if his attendance record doesn't contain more than one 'A' (absent) or more than two continuous 'L' (late).
 
 You need to return whether the student could be rewarded according to his attendance record.
*/


func checkRecord(_ s: String) -> Bool {
    var absentTimes = 0
    var lateTimes = 0
    let attendanceRecode = [Character](s.characters)
    for attendance in attendanceRecode {
        switch attendance {
        case "A":
            absentTimes += 1
            if lateTimes < 3 {
                lateTimes = 0
            }
        case "L":
            lateTimes += 1
        default:
            if lateTimes < 3 {
                lateTimes = 0
            }
        }
    }
    if absentTimes <= 1 && lateTimes <= 2 {
        return true
    } else {
        return false
    }
}
