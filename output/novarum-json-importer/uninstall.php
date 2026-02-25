<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ni_isJsonValid');
delete_site_option('ni_isJsonValid');
delete_option('ni_settings_request_url');
delete_site_option('ni_settings_request_url');
delete_option('ni_settings_request_type');
delete_site_option('ni_settings_request_type');
delete_option('ni_settings_request_authtype');
delete_site_option('ni_settings_request_authtype');
delete_option('ni_settings_request_username');
delete_site_option('ni_settings_request_username');
delete_option('ni_settings_request_password');
delete_site_option('ni_settings_request_password');
delete_option('ni_settings_headers');
delete_site_option('ni_settings_headers');
delete_option('ni_settings_fields');
delete_site_option('ni_settings_fields');
delete_option('ni_settings_post_type');
delete_site_option('ni_settings_post_type');
delete_option('ni_settings_arraykey');
delete_site_option('ni_settings_arraykey');
delete_option('ni_settings_titlekey');
delete_site_option('ni_settings_titlekey');
delete_option('ni_settings_descriptionkey');
delete_site_option('ni_settings_descriptionkey');
delete_option('ni_settings_datekey');
delete_site_option('ni_settings_datekey');
delete_option('ni_settings_post_status');
delete_site_option('ni_settings_post_status');
delete_option('ni_responseKeys');
delete_site_option('ni_responseKeys');

