<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wal_checkbox_enable_winterlock_dash_styles');
delete_site_option('wal_checkbox_enable_winterlock_dash_styles');
delete_option('see_db_version');
delete_site_option('see_db_version');
delete_option('sweet-energy-efficiency-menuitems');
delete_site_option('sweet-energy-efficiency-menuitems');
delete_option('sweet-energy-efficiency-submenuitems');
delete_site_option('sweet-energy-efficiency-submenuitems');
delete_option('see_allowed_admins');
delete_site_option('see_allowed_admins');
delete_option('see_allowed_roles');
delete_site_option('see_allowed_roles');
delete_option('see_clickatell_one_api_key');
delete_site_option('see_clickatell_one_api_key');
delete_option('see_clickatell_http_api_key');
delete_site_option('see_clickatell_http_api_key');
delete_option('see_smsapicom_http_api_key');
delete_site_option('see_smsapicom_http_api_key');
delete_option('see_smsto_api_key');
delete_site_option('see_smsto_api_key');
delete_option('winter_mvc_active_plugins');
delete_site_option('winter_mvc_active_plugins');

