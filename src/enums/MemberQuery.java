package enums;

public enum MemberQuery {
	LOGIN, INSERT_MEMBER;
	@Override
	public String toString() {
		String query = "";
		switch(this) {
		case LOGIN:
			query = "SELECT MEM_ID MEMID ,	"
					+"	TEAM_ID TEAMID,	"
					+"	NAME,	"
					+"	AGE,	" 
					+"	ROLL,	"
					+"	PASSWORD 	PASS"
					+"	FROM MEMBER 	"
					+"	WHERE MEM_ID LIKE '%s' AND PASSWORD LIKE '%s'	";
			break;
		case INSERT_MEMBER:
			query = "INSERT INTO member(MEM_ID, PASSWORD, NAME, SSN)	VALUES('%s', '%s', '%s', '%s')";
		}
		return query;
	}
}
