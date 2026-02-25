<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tc_visitors_tracker_timezone');
delete_site_option('tc_visitors_tracker_timezone');
delete_option('tc_visitors_tracker_firstday');
delete_site_option('tc_visitors_tracker_firstday');
delete_option('tc_visitors_tracker_dateformat');
delete_site_option('tc_visitors_tracker_dateformat');
delete_option('tc_visitors_tracker_timeformat');
delete_site_option('tc_visitors_tracker_timeformat');
delete_option('tc_visitors_tracker_rowlimit');
delete_site_option('tc_visitors_tracker_rowlimit');
delete_option('tc_visitors_tracker_db_version');
delete_site_option('tc_visitors_tracker_db_version');

