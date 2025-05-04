<%@ page import="java.util.Random" %>
<%
    Random rand = new Random();
    int[] num1 = new int[10];
    int[] num2 = new int[10];

    for (int i = 0; i < 10; i++) {
        num1[i] = rand.nextInt(10);  // numbers from 0 to 9
        num2[i] = rand.nextInt(10);
    }

    session.setAttribute("num1", num1);
    session.setAttribute("num2", num2);
%>

<html>
<head><title>Addition Quiz</title></head>
<body>
    <h2>Simple Addition Quiz</h2>
    <form action="result.jsp" method="post">
        <% for (int i = 0; i < 10; i++) { %>
            <p>
                <%= num1[i] %> + <%= num2[i] %> = 
                <input type="text" name="answer<%= i %>" required>
            </p>
        <% } %>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
