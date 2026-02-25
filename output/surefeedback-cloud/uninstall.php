<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('surefeedback_connection_id');
delete_site_option('surefeedback_connection_id');
delete_option('surefeedback_site_id');
delete_site_option('surefeedback_site_id');
delete_option('surefeedback_bearer_token');
delete_site_option('surefeedback_bearer_token');
delete_option('surefeedback_organization_id');
delete_site_option('surefeedback_organization_id');
delete_option('surefeedback_access_token');
delete_site_option('surefeedback_access_token');
delete_option('surefeedback_webhook_state');
delete_site_option('surefeedback_webhook_state');
delete_option('surefeedback_allowed_roles');
delete_site_option('surefeedback_allowed_roles');
delete_option('surefeedback_page_settings');
delete_site_option('surefeedback_page_settings');
delete_option('surefeedback_widget_control_enabled');
delete_site_option('surefeedback_widget_control_enabled');
delete_option('surefeedback_site_token');
delete_site_option('surefeedback_site_token');
delete_option('surefeedback_parent_url');
delete_site_option('surefeedback_parent_url');
delete_option('surefeedback_widget_script_url');
delete_site_option('surefeedback_widget_script_url');
delete_option('surefeedback_is_fully_verified');
delete_site_option('surefeedback_is_fully_verified');
delete_option('surefeedback_last_verification');
delete_site_option('surefeedback_last_verification');
delete_option('surefeedback_last_sync');
delete_site_option('surefeedback_last_sync');
delete_option('surefeedback_verification_status');
delete_site_option('surefeedback_verification_status');
delete_option('surefeedback_load_in_admin');
delete_site_option('surefeedback_load_in_admin');

// Delete Transients
delete_transient('surefeedback_activation_redirect');
delete_site_transient('surefeedback_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('surefeedback_poll_connection_tokens');
wp_clear_scheduled_hook('surefeedback_auto_verify');
wp_clear_scheduled_hook('surefeedback_hourly_verify');
wp_clear_scheduled_hook('surefeedback_cleanup_rate_limits');

