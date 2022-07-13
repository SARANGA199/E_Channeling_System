package appointment;

public class Appointment {
	
	private int id;
	private String name;
	private String address;
	private String age;
	private String mcenter;
	private String docname;
	private String spec;
	private String adate;
	private String atime;
	
	
	public Appointment(int id, String name, String address, String age, String mcenter, String docname, String spec,
			String adate, String atime) {
		
		
		this.id = id;
		this.name = name;
		this.address = address;
		this.age = age;
		this.mcenter = mcenter;
		this.docname = docname;
		this.spec = spec;
		this.adate = adate;
		this.atime = atime;
	}


	public int getId() {
		return id;
	}




	public String getName() {
		return name;
	}



	public String getAddress() {
		return address;
	}



	public String getAge() {
		return age;
	}





	public String getMcenter() {
		return mcenter;
	}




	public String getDocname() {
		return docname;
	}




	public String getSpec() {
		return spec;
	}


	


	public String getAdate() {
		return adate;
	}


	


	public String getAtime() {
		return atime;
	}



	
	
	
	

}
