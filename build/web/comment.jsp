<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%

    String email = request.getParameter("mailsend");
    String desc = request.getParameter("desc");
    int productid = 0;


        productid = Integer.parseInt(request.getParameter("postid"));

    String subj = "Focus Poject Text Mail";
    String content = desc;
    // String email = emailid;


    final String username = "testsattvaq@gmail.com";
    final String mail_password = "www.sattvaq.com";

    Properties props = new Properties();
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.port", "587");

    Session session1 = Session.getInstance(props,
            new javax.mail.Authenticator() {

                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(username, mail_password);
                }
            });

    try {

        Message message = new MimeMessage(session1);
        message.setFrom(new InternetAddress("sattvaq.info@gmail.com"));
        message.setRecipients(Message.RecipientType.TO,
                InternetAddress.parse(email));
        message.setSubject(subj);
        message.setContent(content, "text/html");
        Transport.send(message);
       
       

    } catch (MessagingException e) {
        throw new RuntimeException(e);
    }
 response.sendRedirect("Single_Post_de3tails.jsp?msg=Mail has been Sent !&postid=" + productid);
%>

