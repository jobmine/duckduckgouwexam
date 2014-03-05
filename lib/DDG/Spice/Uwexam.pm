package DDG::Spice::Uwexam;
# ABSTRACT: University of Waterloo Exam Schedule

use DDG::Spice;

primary_example_queries "uw cs 135";
secondary_example_queries "uwexam ece124", "uwexam bio204";
description "U Waterloo Exam Schedule";
name "Uwexam";
icon_url "http://uwexam.com/favicon.ico";
source "uwexam.com";
code_url "https://github.com/duckduckgo/zeroclickinfo-spice/blob/master/lib/DDG/Spice/Uwexam.pm";
topics "entertainment", "music", "everyday";
category "entertainment";
attribution github => ['https://github.com/jobmine','Lucas Wang'],
           twitter => ['http://twitter.com/wzti','Lucas Wang'];

triggers any => 'uwexam', 'university of waterloo', 'uw', 'uwaterloo', 'exam schedule';

spice to => 'https://api.uwaterloo.ca/v2/courses/$1/examschedule.json?key={{ENV{DDG_SPICE_UWEXAM_APIKEY}}}&callback={{callback}}';

handle query_lc => sub {
    if (/([a-z][a-z][a-z]?[a-z]?[a-z]?)(?:\s|)([0-9]+([a-z]?))/) {
    	my $sub = $1 || "";
    	my $code = $2 || "";

        $sub =~ s/\s+//;
        $code =~ s/\s+//;

    	if($sub) {
    		if ($code) {
    			return $sub, $code;
    		}	
    	}
    }
    return;
};
1;