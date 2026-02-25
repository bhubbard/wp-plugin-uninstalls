<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('udimi_optin_key');
delete_site_option('udimi_optin_key');
delete_option('udimi_prime_features');
delete_site_option('udimi_prime_features');
delete_option('udimi_user_email');
delete_site_option('udimi_user_email');
delete_option('udimi_allow_optin_tracking');
delete_site_option('udimi_allow_optin_tracking');
delete_option('udimi_is_last_success');
delete_site_option('udimi_is_last_success');
delete_option('udimi_optin_date');
delete_site_option('udimi_optin_date');
delete_option('udimi_optin_script');
delete_site_option('udimi_optin_script');

