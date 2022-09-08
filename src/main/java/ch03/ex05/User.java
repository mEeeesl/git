package ch03.ex05;

public class User {
	private String name;
	private int age;
	
	public User(String name, int age) {
		this.name = name;
		this.age = age;
	}

	public String getName() {
		return name;
	}
	public int getAge() {
		return age;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	@Override
	public String toString() { // 개발 하는동안 잘되는지 콘솔에 확인용도. 최종 출력은 HTML page에
		return name + ", " + age;
	}
	
	
}
