-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jajadi_kerktijden_db_version', 'jajadikerktijdenkerkid', 'jajadikerktijdendefaulttext', 'jajadikerktijdendefaulbackground', 'jajadikerktijdencancelledregular', 'jajadikerktijdencancelledtype', 'jajadikerktijdengatheringtype', 'jajadikerktijdengatheringtyperegular', 'jajadikerktijdenlink', 'jajadikerktijdenlinkhover', 'jajadikerktijdendate', 'jajadikerktijdenlocation', 'jajadikerktijdenlocationdeviating', 'jajadikerktijdenpasttext', 'jajadikerktijdenpastdaytext');

