using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class survey : System.Web.UI.Page
    {
        // Assign all user input from the Request implicit object since the 
        // the calling page uses only HFC controls (ie. no runat='server'), and so no instances
        // of the HtmlControls or WebControls classes have been instantiated server-side.
        //
        // Server-side validation is done of the user input despite client-side 
        // 'required' input items in case JavaScript has been disabled on the client 
        // or a hacker is using a HTTP Request to talk directly to this page 
        // bypassing the client JavaScript entirely.
        //
        // Add header text and styling to indicate whether the survey is complete.
        //
        // If all input is complete, calculate a grade for the professor and course. 
        //
        protected void Page_Load(object sender, EventArgs e)
        {
            //Retrieve all Questions related to the Professor 
            //from the radio button values on the Request object
            String[] profResponses = new String[]
            {
                Request["profQuestion0"],
                Request["profQuestion1"],
                Request["profQuestion2"],
                Request["profQuestion3"],
                Request["profQuestion4"],
                Request["profQuestion5"],
                Request["profQuestion6"],
                Request["profQuestion7"]
            };

            //Retrieve all Questions related to the Course 
            //from the radio button values on the Request object
            String[] courseResponses = new String[]
            {
                Request["courseQuestion0"],
                Request["courseQuestion1"],
                Request["courseQuestion2"],
                Request["courseQuestion3"],
                Request["courseQuestion4"],
                Request["courseQuestion5"],
                Request["courseQuestion6"],
                Request["courseQuestion7"],
                Request["courseQuestion8"],
                Request["courseQuestion9"],
                Request["courseQuestion10"],
                Request["courseQuestion11"]
            };

            lblStudentName.Text = Request["studentName"];
            lblStudentId.Text = Request["studentId"];
            lblCourse.Text = Request["course"];
            lblProfResponse0.Text = profResponses[0];
            lblProfResponse1.Text = profResponses[1];
            lblProfResponse2.Text = profResponses[2];
            lblProfResponse3.Text = profResponses[3];
            lblProfResponse4.Text = profResponses[4]; 
            lblProfResponse5.Text = profResponses[5];
            lblProfResponse6.Text = profResponses[6];
            lblProfResponse7.Text = profResponses[7];
            lblCourseResponse0.Text = courseResponses[0];
            lblCourseResponse1.Text = courseResponses[1];
            lblCourseResponse2.Text = courseResponses[2];
            lblCourseResponse3.Text = courseResponses[3];
            lblCourseResponse4.Text = courseResponses[4];
            lblCourseResponse5.Text = courseResponses[5];
            lblCourseResponse6.Text = courseResponses[6];
            lblCourseResponse7.Text = courseResponses[7];
            lblCourseResponse8.Text = courseResponses[8];
            lblCourseResponse9.Text = courseResponses[9];
            lblCourseResponse10.Text = courseResponses[10];
            lblCourseResponse11.Text = courseResponses[11];

            // Check if a radio button for each professor related question has been selected
            Boolean profQuestionsCompleted =
                Array.TrueForAll(profResponses, response => { return response != null; });

            // Check if a radio button for each course related question has been selected 
            Boolean courseQuestionsCompleted =
                Array.TrueForAll(courseResponses, response => { return response != null; });

            // Check if all questions have been answered
            if (profQuestionsCompleted
                &&
                courseQuestionsCompleted
                &&
                Request["StudentName"] != null
                &&
                Request["StudentId"] != null
                &&
                Request["course"] != null) 
            {
                // All questions have been answered. Provide the grades and message the survey is complete
                lblProfSection.Text = "The professor's overall grade is " + CalculateGrade(profResponses) + ".";
                lblCourseSection.Text = "The overall grade for the course is " + CalculateGrade(courseResponses) + ".";
                lblMessageArea.Text = "<h3>You are are finished. Thank you for the feedback!</h3>";
                lblMessageArea.CssClass = "text-center finish";
            }
            else
            {
                // All questions have not been answered. Let the user know with a message on the page 
                lblMessageArea.Text = "<h3>Some responses are missing. Click 'Back' to finish.</h3>";
                lblMessageArea.CssClass = "text-center error";
            }

        }
        // Each response is worth a point on a scale of 1 to 5
        // 'Strongly Agree' (Points: 5)
        // 'Agree' (Points: 4)
        // 'Neutral' (Points: 3)
        // 'Disagree' (Points: 2)
        // 'Strongly Disagree' (Points: 1)
        //
        // The grade average is the sum total of points divided by maximum possible available (5 * number of questions)
        // 80% or greater is a A
        // 60% or greater is a B
        // 40% or greater is a C
        // 20% or greater is an D
        // otherwise you get an F
        private String CalculateGrade(String[] responses)
        {
            float total = 0.0F;
            string letterGrade = "";

            Array.ForEach(responses, response => 
                {
                    switch (response)
                    {
                        case "Strongly Agree":
                            total += 5.0F;
                            break;
                        case "Agree":
                            total += 4.0F;
                            break;
                        case "Neutral":
                            total += 3.0F;
                            break;
                        case "Disagree":
                            total += 2.0F;
                            break;
                        case "Strongly Disagree":
                            total += 1.0F;
                            break;
                    }
                });
             
            switch (total / (responses.Length * 5))
            {
                case float tot when tot > 0.8F:
                    letterGrade = "A";
                    break;
                case float tot when tot > 0.6F:
                    letterGrade = "B";
                    break;
                case float tot when tot > 0.4F:
                    letterGrade = "C";
                    break;
                case float tot when tot > 0.2F:
                    letterGrade = "D";
                    break;
                default:
                    letterGrade = "F";
                    break;
            }
            return letterGrade;
        }
    }
}