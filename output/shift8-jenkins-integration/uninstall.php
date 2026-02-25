<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shift8_jenkins_user');
delete_site_option('shift8_jenkins_user');
delete_option('shift8_jenkins_api');
delete_site_option('shift8_jenkins_api');
delete_option('shift8_jenkins_url');
delete_site_option('shift8_jenkins_url');
delete_option('shift8_jenkins_db_version');
delete_site_option('shift8_jenkins_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('shift8_jenkins_cron_hook');

