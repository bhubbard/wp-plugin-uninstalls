<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qib_dismiss_notice');
delete_site_option('qib_dismiss_notice');
delete_option('qib_first_activate');
delete_site_option('qib_first_activate');
delete_option('qib_settingz');
delete_site_option('qib_settingz');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

