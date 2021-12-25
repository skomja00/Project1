<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="survey.aspx.cs" Inherits="Project1.survey" %>

<!DOCTYPE html>

<html>
<head runat="server">
<title>Online Survey</title>
<link rel="icon" type="image/svg" href="Images/check2-circle.svg">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link href="Content/site.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <main>
            <form id="surveyResponses" runat="server">
                <div class="row jumbotron"></div>
                
                <h2 class="text-center">James Skomsky Student Feedback Survey Results</h2>
                <asp:Label ID="lblMessageArea" runat="server"></asp:Label>
                
                <p class="sectionHeader">Your information.</p>

                <!--Student Name-->
                <div class="row">
                    <p class="col-2">Student Name: </p>
                    <asp:Label ID="lblStudentName" runat="server" CssClass="col-6"></asp:Label>
                </div>

                <!--Student Id-->
                <div class="row">
                    <p class="col-2">Student Id: </p>
                    <asp:Label ID="lblStudentId" runat="server" CssClass="col-6"></asp:Label>
                </div>

                <!--Course-->
                <div class="row">
                    <p class="col-2">Course: </p>
                    <asp:Label ID="lblCourse" runat="server" CssClass="col-6"></asp:Label>
                </div>
                
                <!--Responses and grade for the questions regarding the professor.-->
                <asp:Label ID="lblProfSection" CssClass="sectionHeader" runat="server">Responses regarding the professor.</asp:Label>

                <table class="table table-border table-striped table-condensed">
                    <thead>
                        <tr>
                            <td>Question</td>
                            <td>Your Response</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>The professor demonstrated knowledge of the subject matter.</td>
                            <td><asp:Label ID="lblProfResponse0" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>The professor was effective in communicating the content of the course.</td>
                            <td><asp:Label ID="lblProfResponse1" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>The professor communicated objectives and requirements clearly.</td>
                            <td><asp:Label ID="lblProfResponse2" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>The professor encouraged feedback from the class.</td>
                            <td><asp:Label ID="lblProfResponse3" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>The professor was accessible and willing to provide help.</td>
                            <td><asp:Label ID="lblProfResponse4" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>The professor showed genuine concern for the students.</td>
                            <td><asp:Label ID="lblProfResponse5" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>The professor was enthusiastic about the course.</td>
                            <td><asp:Label ID="lblProfResponse6" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Would you recommend this professor to other students?</td>
                            <td><asp:Label ID="lblProfResponse7" runat="server"></asp:Label></td>
                        </tr>
                    </tbody>
                </table>

                <!--List of responses and grade regarding the course. -->
                <asp:Label ID="lblCourseSection" CssClass="sectionHeader" runat="server">List of responses regarding the course.</asp:Label>

                <table class="table table-border table-striped table-condensed">
                    <thead>
                        <tr>
                            <td>Question</td>
                            <td>Your Response</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>The lectures, tests, and assignments complemented each other.</td>
                            <td><asp:Label ID="lblCourseResponse0" runat="server"></asp:Label></td>
                        <tr>
                            <td>The instructional materials (i.e. books, readings, handouts, study guides, lab manuals, multimedia, software) increased my knowledge and skills in the subject matter.</td>
                            <td><asp:Label ID="lblCourseResponse1" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>The amount of reading you were asked to do was appropriate.</td>
                            <td><asp:Label ID="lblCourseResponse2" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>The course was organized in a manner that helped me understand the underlying concepts.</td>
                            <td><asp:Label ID="lblCourseResponse3" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>The course gave me the confidence to do more advanced work in the subject.</td>
                            <td><asp:Label ID="lblCourseResponse4" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>The examinations, projects measured my knowledge of the course material.</td>
                            <td><asp:Label ID="lblCourseResponse5" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>The grading practices were clearly defined.</td>
                            <td><asp:Label ID="lblCourseResponse6" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>The grading of the course was fair.</td>
                            <td><asp:Label ID="lblCourseResponse7" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>I believe that what I’m being asked to learn in this course is important.</td>
                            <td><asp:Label ID="lblCourseResponse8" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>I would highly recommend this course to other students.</td>
                            <td><asp:Label ID="lblCourseResponse9" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>The course was helpful in progress toward my degree.</td>
                            <td><asp:Label ID="lblCourseResponse10" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Overall, this course met my expectations for the quality of the course.</td>
                            <td><asp:Label ID="lblCourseResponse11" runat="server"></asp:Label></td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </main>
    </div>
</body>
</html>