<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fluentwiz_cloud_storage_manager_pro_plugin_license');
delete_site_option('fluentwiz_cloud_storage_manager_pro_plugin_license');
delete_option('fluentwiz_cloud_storage_manager_connections');
delete_site_option('fluentwiz_cloud_storage_manager_connections');
delete_option('fwcsm_configuration_email_consent');
delete_site_option('fwcsm_configuration_email_consent');
delete_option('fwcsm_email_consent_step_dismissed');
delete_site_option('fwcsm_email_consent_step_dismissed');

// Clear Cron Jobs
wp_clear_scheduled_hook('fwcsm_process_deleting');
wp_clear_scheduled_hook('fwcsm_refresh_google_drive_token');
wp_clear_scheduled_hook('fwcsm_refresh_dropbox_token');
wp_clear_scheduled_hook('fwcsm_refresh_microsoft_onedrive_token');
wp_clear_scheduled_hook('fwcsm_upload_cleanup');

