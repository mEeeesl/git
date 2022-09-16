package ch05.service;

import ch05.domain.Employee;

public interface EmployeeService { // Employee = 업무명
	Employee getEmployee(int empId);
}

// 서비스 - 	 업무명 + Service
// 퍼시스턴스 - 데이터명 + Dao