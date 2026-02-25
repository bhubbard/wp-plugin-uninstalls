<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cas_settings');
delete_site_option('cas_settings');
delete_option('cas_version');
delete_site_option('cas_version');

