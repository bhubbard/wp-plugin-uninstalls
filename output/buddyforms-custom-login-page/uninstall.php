<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buddyforms_custom_login_settings');
delete_site_option('buddyforms_custom_login_settings');
delete_option('buddyforms_registration_page');
delete_site_option('buddyforms_registration_page');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

