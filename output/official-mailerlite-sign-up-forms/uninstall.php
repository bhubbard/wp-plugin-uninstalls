<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailerlite_api_key');
delete_site_option('mailerlite_api_key');
delete_option('mailerlite_enabled');
delete_site_option('mailerlite_enabled');
delete_option('account_id');
delete_site_option('account_id');
delete_option('account_subdomain');
delete_site_option('account_subdomain');
delete_option('mailerlite_popups_disabled');
delete_site_option('mailerlite_popups_disabled');
delete_option('mailerlite_platform');
delete_site_option('mailerlite_platform');
delete_option('mailerlite_double_optin_disabled');
delete_site_option('mailerlite_double_optin_disabled');
delete_option('mailerlite_forms_user_role_settings');
delete_site_option('mailerlite_forms_user_role_settings');

