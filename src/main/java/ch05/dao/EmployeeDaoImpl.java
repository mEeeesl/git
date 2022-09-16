package ch05.dao;

import ch05.config.Configuration2;
import ch05.dao.map.EmployeeMap;
import ch05.domain.Employee;

public class EmployeeDaoImpl implements EmployeeDao{
	private EmployeeMap empMap;
	
	public EmployeeDaoImpl() {
		this.empMap = Configuration2.getMapper(EmployeeMap.class);
	}
	
	@Override
	public Employee selectEmployee(int empId) {
		return empMap.selectEmployee(empId);
	}
}
