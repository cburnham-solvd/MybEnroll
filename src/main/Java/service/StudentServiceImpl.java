public interface StudentService {
    void insertStudent(Student student);
    boolean getStudentByLogin(String userName, String password);
    boolean getStudentByUserName(String userName);
}