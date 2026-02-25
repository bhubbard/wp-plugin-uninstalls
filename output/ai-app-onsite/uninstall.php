<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_app_onsite_fresh_install');
delete_site_option('ai_app_onsite_fresh_install');
delete_option('ai_app_onsite_encryption_key');
delete_site_option('ai_app_onsite_encryption_key');
delete_option('ai_app_onsite_encryption_iv');
delete_site_option('ai_app_onsite_encryption_iv');
delete_option('ai_app_onsite_api_key');
delete_site_option('ai_app_onsite_api_key');
delete_option('aiapp_server_base_url');
delete_site_option('aiapp_server_base_url');
delete_option('ai_app_onsite_unique_id');
delete_site_option('ai_app_onsite_unique_id');
delete_option('ai_app_license_last_checked');
delete_site_option('ai_app_license_last_checked');
delete_option('aiapp_client_credentials');
delete_site_option('aiapp_client_credentials');
delete_option('ai_app_onsite_accepted_tos_version');
delete_site_option('ai_app_onsite_accepted_tos_version');
delete_option('is_hackathon_user');
delete_site_option('is_hackathon_user');
delete_option('domain_access_allowed');
delete_site_option('domain_access_allowed');

// Delete Transients
delete_transient('ai_app_onsite_plugin_was_updated');
delete_site_transient('ai_app_onsite_plugin_was_updated');

// Clear Cron Jobs
wp_clear_scheduled_hook('ai_app_onsite_check_license_cron');
wp_clear_scheduled_hook('ai_app_onsite_user_stats_cron');

