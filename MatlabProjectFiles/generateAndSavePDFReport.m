function generateAndSavePDFReport(~, ~)
    import mlreportgen.dom.*;
    import mlreportgen.report.*;

    % Create a report
   report = Document('LoginFormReport', 'pdf');

    % Add a title page
    titleText = Text('Login Form Report');
    titleText.Bold = true;

    subtitleText = Text(datestr(now));

    titlePage = TitlePage;
    titlePage.Title = titleText;
    titlePage.Subtitle = subtitleText;

    append(report, titlePage);

    % Add a heading to the report
    append(report, 'Login Form Data', 'Heading1');

    % Add user data to the report
     append(report, Paragraph(['Username: ', username]));


    % Save the report
    close(report);
    rptview(report);
end
