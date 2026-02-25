<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CRMZT_refresh_token');
delete_site_option('CRMZT_refresh_token');
delete_option('CRMZT_client_id');
delete_site_option('CRMZT_client_id');
delete_option('CRMZT_client_secret');
delete_site_option('CRMZT_client_secret');
delete_option('CRMZT_auth_code');
delete_site_option('CRMZT_auth_code');
delete_option('CRMZT_maxmind_account_id');
delete_site_option('CRMZT_maxmind_account_id');
delete_option('CRMZT_maxmind_license_key');
delete_site_option('CRMZT_maxmind_license_key');
delete_option('CRMZT_org_id');
delete_site_option('CRMZT_org_id');
delete_option('CRMZT_access_token');
delete_site_option('CRMZT_access_token');
delete_option('CRMZT_crmformswpbuilder_settings');
delete_site_option('CRMZT_crmformswpbuilder_settings');

