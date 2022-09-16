package ch05.dao;

import ch05.domain.Employee;

public interface EmployeeDao {
	Employee selectEmployee(int empId);
}

//퍼시스턴스 - 데이터명 + Dao
//서비스 - 	 업무명 + Service