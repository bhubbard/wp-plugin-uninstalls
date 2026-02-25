<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bruteguard_privacy_opt_in');
delete_site_option('bruteguard_privacy_opt_in');
delete_option('bruteguard_saved_settings');
delete_site_option('bruteguard_saved_settings');
delete_option('bruteguard_deactivated');
delete_site_option('bruteguard_deactivated');
delete_option('bruteguard_user');
delete_site_option('bruteguard_user');
delete_option('bruteguard_version');
delete_site_option('bruteguard_version');
delete_option('bruteguard_do_activation_redirect');
delete_site_option('bruteguard_do_activation_redirect');
delete_option('bruteguard_apikey');
delete_site_option('bruteguard_apikey');
delete_option('bruteguard_whitelist');
delete_site_option('bruteguard_whitelist');
delete_option('bruteguard_apikey_status');
delete_site_option('bruteguard_apikey_status');
delete_option('trusted_ip_header');
delete_site_option('trusted_ip_header');
delete_option('bruteguard_error');
delete_site_option('bruteguard_error');

