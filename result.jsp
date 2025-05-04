<%
    int[] num1 = (int[]) session.getAttribute("num1");
    int[] num2 = (int[]) session.getAttribute("num2");
    int score = 0;
%>

<html>
<head><title>Quiz Results</title></head>
<body>
    <h2>Your Quiz Results</h2>
    <ul>
        <% for (int i = 0; i < 10; i++) {
            int correct = num1[i] + num2[i];
            int userAnswer = Integer.parseInt(request.getParameter("answer" + i));
            if (userAnswer == correct) score++;
        %>
            <li>
                <%= num1[i] %> + <%= num2[i] %> = <%= correct %>
                | Your answer: <%= userAnswer %>
                <% if (userAnswer == correct) { %> ✅
                <% } else { %> ❌ <% } %>
            </li>
        <% } %>
    </ul>

    <h3>Total Score: <%= score %> out of 10</h3>
</body>
</html>
