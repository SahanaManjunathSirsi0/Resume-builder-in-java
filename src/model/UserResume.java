package model;

public class UserResume {
    private String name;
    private String email;
    private String phone;
    private String summary;

    public UserResume(String name, String email, String phone, String summary) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.summary = summary;
    }

    // Getters
    public String getName() { return name; }
    public String getEmail() { return email; }
    public String getPhone() { return phone; }
    public String getSummary() { return summary; }
}
