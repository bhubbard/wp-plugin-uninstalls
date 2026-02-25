<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jajadi_kerktijden_db_version');
delete_site_option('jajadi_kerktijden_db_version');
delete_option('jajadikerktijdenkerkid');
delete_site_option('jajadikerktijdenkerkid');
delete_option('jajadikerktijdendefaulttext');
delete_site_option('jajadikerktijdendefaulttext');
delete_option('jajadikerktijdendefaulbackground');
delete_site_option('jajadikerktijdendefaulbackground');
delete_option('jajadikerktijdencancelledregular');
delete_site_option('jajadikerktijdencancelledregular');
delete_option('jajadikerktijdencancelledtype');
delete_site_option('jajadikerktijdencancelledtype');
delete_option('jajadikerktijdengatheringtype');
delete_site_option('jajadikerktijdengatheringtype');
delete_option('jajadikerktijdengatheringtyperegular');
delete_site_option('jajadikerktijdengatheringtyperegular');
delete_option('jajadikerktijdenlink');
delete_site_option('jajadikerktijdenlink');
delete_option('jajadikerktijdenlinkhover');
delete_site_option('jajadikerktijdenlinkhover');
delete_option('jajadikerktijdendate');
delete_site_option('jajadikerktijdendate');
delete_option('jajadikerktijdenlocation');
delete_site_option('jajadikerktijdenlocation');
delete_option('jajadikerktijdenlocationdeviating');
delete_site_option('jajadikerktijdenlocationdeviating');
delete_option('jajadikerktijdenpasttext');
delete_site_option('jajadikerktijdenpasttext');
delete_option('jajadikerktijdenpastdaytext');
delete_site_option('jajadikerktijdenpastdaytext');

// Clear Cron Jobs
wp_clear_scheduled_hook('jajadi_kerktijden_daily_event');

