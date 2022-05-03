import com.example.mapitsp.dao.contactSubDAO;
import com.example.mapitsp.model.contactSub;
import com.example.mapitsp.servlet.addSubmissionServlet;
import org.junit.jupiter.api.Test;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;


class ContactTest {

    private static final String INSERT_CONTACT = "INSERT INTO contact_submissions" + " (name, email, message, date_time, number) VALUES " + "(?,?,?,?,?);";


    @Test
    public void ServletTest() throws ServletException, IOException, SQLException {
        HttpServletRequest request = mock(HttpServletRequest.class);
        HttpServletResponse response = mock(HttpServletResponse.class);

        contactSubDAO contactsubdao = new contactSubDAO();
        contactSub submission = new contactSub();
        addSubmissionServlet contactServlet = new addSubmissionServlet();
        contactServlet.init();

        contactsubdao.insertContactSub(submission);
        when(request.getParameter("name")).thenReturn("MoJamba");
        when(request.getParameter("email")).thenReturn("mjamil@gmail.com");
        when(request.getParameter("message")).thenReturn("This is my message!");
        when(request.getParameter("number")).thenReturn("1234567890");

        contactServlet.doPost(request,response);
    }



    @Test
    void contactSubClassTest(){
        contactSub submission = new contactSub();

        LocalDate curr = LocalDate.now();


        submission.setEmail("meofje@gmail.com");
        submission.setDate(Date.valueOf(curr));
        submission.setId(3);
        submission.setName("Mo Jamba");
        submission.setNumber("1234567890");
        submission.setMessage("This is my message! Ok! Got It");

        contactSub submissionID = new contactSub(1, submission.getName(), submission.getEmail(),
                submission.getMessage(), submission.getDate(), submission.getNumber());

        System.out.println(submissionID.getMessage());


        System.out.println(submission.getEmail());
        System.out.println(submission.getDate());
        System.out.println(submission.getId());
        System.out.println(submission.getName());
        System.out.println(submission.getNumber());
        System.out.println(submission.getMessage());


    }

    @Test
    public void submissionDaoTest(contactSub submission){



    }

}
