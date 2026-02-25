<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elementrio_version');
delete_site_option('elementrio_version');
delete_option('elementrio_installed_time');
delete_site_option('elementrio_installed_time');
delete_option('elementrio_do_activation_redirect');
delete_site_option('elementrio_do_activation_redirect');
delete_option('elementrio_settings');
delete_site_option('elementrio_settings');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

