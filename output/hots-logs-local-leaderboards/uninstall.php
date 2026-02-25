<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hots_logs_last_scrape');
delete_site_option('hots_logs_last_scrape');
delete_option('jal_db_version');
delete_site_option('jal_db_version');

