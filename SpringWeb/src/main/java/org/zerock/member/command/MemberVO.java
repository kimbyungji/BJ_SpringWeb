package org.zerock.member.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//@Getter	// getter
//@Setter	// setter
//@NoArgsConstructor	// 기본생성자
//@AllArgsConstructor	// 전체 필드생성자
//@ToString	// toString

@Data	// getter, setter, 기본생성자, equals, toString...
@NoArgsConstructor
@AllArgsConstructor
public class MemberVO {
	
	private String id;
	private String pw;
	private String name;
	private Timestamp regdate;	
}
