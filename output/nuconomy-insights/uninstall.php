<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nuconomy_projecttoken');
delete_site_option('nuconomy_projecttoken');
delete_option('nuconomy_authcode');
delete_site_option('nuconomy_authcode');
delete_option('nuconomy_step');
delete_site_option('nuconomy_step');
delete_option('nuconomy_project_server_token');
delete_site_option('nuconomy_project_server_token');
delete_option('nuconomy_completetoken');
delete_site_option('nuconomy_completetoken');
delete_option('nuconomy_completemail');
delete_site_option('nuconomy_completemail');

// Clear Cron Jobs
wp_clear_scheduled_hook('nucon_enrollment_event');

