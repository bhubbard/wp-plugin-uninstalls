<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('miga_calendar_days');
delete_site_option('miga_calendar_days');
delete_option('eMonth');
delete_site_option('eMonth');
delete_option('eYear');
delete_site_option('eYear');

