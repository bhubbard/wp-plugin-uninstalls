<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pidex_settings');
delete_site_option('pidex_settings');
delete_option('pidex_installed');
delete_site_option('pidex_installed');
delete_option('pidex_version');
delete_site_option('pidex_version');

