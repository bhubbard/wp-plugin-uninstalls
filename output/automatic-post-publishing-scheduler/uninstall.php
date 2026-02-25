<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('publish_scheduler_options');
delete_site_option('publish_scheduler_options');
delete_option('wwm_scheduler_general_options');
delete_site_option('wwm_scheduler_general_options');
delete_option('wwm_pubscheduler_db_version');
delete_site_option('wwm_pubscheduler_db_version');

