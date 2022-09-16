package ch05.domain;

import java.time.LocalDate;

public class Employee {
	private int empId;
	private String empName;
	private LocalDate hireDate;
	
	@Override
	public String toString() {
		return String.format("%2d %5s %5s", empId, empName, hireDate);
			// empId + " " + empName + " " + hireDate;
	}
}
