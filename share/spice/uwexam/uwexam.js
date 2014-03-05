function ddg_spice_uwexam(api_response) {
    // "use strict";
    if (!api_response.data.sections) return;

    // Display the plug-in.
    Spice.render({
        data             : api_response,
        header1          : 'U Waterloo Final Exam (' + api_response.data.course + ')',
        source_url       : 'uwexam.com',
        source_name      : 'UWExam.com',
        spice_name       : 'uwexam',
        force_favicon_url: 'http://uwexam.com/favicon.ico',
        template_normal  : 'uwexam',
    	force_big_header  : true,
    	force_space_after : true,
    	force_no_fold : true
    });
}