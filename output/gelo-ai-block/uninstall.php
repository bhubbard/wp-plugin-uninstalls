<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gelo_ai_license_key');
delete_site_option('gelo_ai_license_key');
delete_option('gelo_ai_installed_plugins');
delete_site_option('gelo_ai_installed_plugins');

