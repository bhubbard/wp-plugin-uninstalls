<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpba_auth_settings');
delete_site_option('wpba_auth_settings');
delete_option('wpba_auth_version');
delete_site_option('wpba_auth_version');

