<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zmail_integ_domain_name');
delete_site_option('zmail_integ_domain_name');
delete_option('zmail_plugin_installed');
delete_site_option('zmail_plugin_installed');
delete_option('zmail_auth_code');
delete_site_option('zmail_auth_code');
delete_option('zmail_refresh_token');
delete_site_option('zmail_refresh_token');
delete_option('zmail_account_id');
delete_site_option('zmail_account_id');
delete_option('zmail_integ_from_email_id');
delete_site_option('zmail_integ_from_email_id');
delete_option('zmail_access_token');
delete_site_option('zmail_access_token');
delete_option('redirect_url');
delete_site_option('redirect_url');
delete_option('zmail_integ_client_id');
delete_site_option('zmail_integ_client_id');
delete_option('zmail_integ_client_secret');
delete_site_option('zmail_integ_client_secret');
delete_option('zmail_content_type');
delete_site_option('zmail_content_type');
delete_option('zmail_integ_from_name');
delete_site_option('zmail_integ_from_name');
delete_option('zmail_integ_timestamp');
delete_site_option('zmail_integ_timestamp');

