<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sigmize_bearer_token');
delete_site_option('sigmize_bearer_token');
delete_option('sigmize_auth_token');
delete_site_option('sigmize_auth_token');
delete_option('sigmize_connection_id');
delete_site_option('sigmize_connection_id');
delete_option('sigmize_workspace_uuid');
delete_site_option('sigmize_workspace_uuid');
delete_option('sigmize_experiments');
delete_site_option('sigmize_experiments');
delete_option('sigmize_last_sync_time');
delete_site_option('sigmize_last_sync_time');
delete_option('sigmize_gdpr_settings');
delete_site_option('sigmize_gdpr_settings');
delete_option('sigmize_gdpr_enabled');
delete_site_option('sigmize_gdpr_enabled');
delete_option('sigmize_manual_sdk_loading');
delete_site_option('sigmize_manual_sdk_loading');
delete_option('sigmize_settings');
delete_site_option('sigmize_settings');
delete_option('sigmize_last_status_sync');
delete_site_option('sigmize_last_status_sync');

