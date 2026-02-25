<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eobu_db_options');
delete_site_option('eobu_db_options');
delete_option('eobu_schedule_options');
delete_site_option('eobu_schedule_options');
delete_option('eobu_options');
delete_site_option('eobu_options');

