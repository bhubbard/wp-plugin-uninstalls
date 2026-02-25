<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fastly-schema-version');
delete_site_option('fastly-schema-version');
delete_option('fastly-settings-general');
delete_site_option('fastly-settings-general');
delete_option('fastly-settings-advanced');
delete_site_option('fastly-settings-advanced');
delete_option('fastly-settings-io');
delete_site_option('fastly-settings-io');
delete_option('fastly-settings-webhooks');
delete_site_option('fastly-settings-webhooks');
delete_option('fastly_api_hostname');
delete_site_option('fastly_api_hostname');
delete_option('fastly_api_key');
delete_site_option('fastly_api_key');
delete_option('fastly_service_id');
delete_site_option('fastly_service_id');
delete_option('fastly_log_purges');
delete_site_option('fastly_log_purges');
delete_option('fastly_vcl_version');
delete_site_option('fastly_vcl_version');

