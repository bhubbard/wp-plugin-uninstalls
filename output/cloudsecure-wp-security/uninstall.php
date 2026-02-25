<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cloudsecurewp_enable_email_server_error_notification');
delete_site_option('cloudsecurewp_enable_email_server_error_notification');
delete_option('cloudsecurewp_two_factor_authentication_roles');
delete_site_option('cloudsecurewp_two_factor_authentication_roles');
delete_option('cptui_post_types');
delete_site_option('cptui_post_types');

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_version_check');

