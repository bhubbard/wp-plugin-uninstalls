<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jal_db_version');
delete_site_option('jal_db_version');
delete_option('ravpageLastTimestampMajor');
delete_site_option('ravpageLastTimestampMajor');
delete_option('ravpageLastTimestampMinor');
delete_site_option('ravpageLastTimestampMinor');
delete_option('ravpageKey');
delete_site_option('ravpageKey');

