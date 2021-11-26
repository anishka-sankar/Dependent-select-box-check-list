package Model;

import java.util.List;

public class Department {
	private String College;
	private List<String> dep;
	
	public String getCollege() {
		return College;
	}
	public void setCollege(String college) {
		College = college;
	}
	public List<String> getDep() {
		return dep;
	}
	public void setDep(List<String> dep) {
		this.dep = dep;
	}
	/**
	 * @param college
	 * @param dep
	 */
	public Department(String college, List<String> dep) {
		//super();
		College = college;
		this.dep = dep;
	}
	
}
