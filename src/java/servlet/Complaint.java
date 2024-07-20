public class Complaint {
    private String name;
    private String phone;
    private String location;
    private String issue;
    private String complaint;
    private String message;

    // Constructors

    public Complaint() {
        // Default constructor
    }

    public Complaint(String name, String phone, String location, String issue, String complaint, String message) {
        this.name = name;
        this.phone = phone;
        this.location = location;
        this.issue = issue;
        this.complaint = complaint;
        this.message = message;
    }

    // Getters and Setters

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getIssue() {
        return issue;
    }

    public void setIssue(String issue) {
        this.issue = issue;
    }

    public String getComplaint() {
        return complaint;
    }

    public void setComplaint(String complaint) {
        this.complaint = complaint;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
