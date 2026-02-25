<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lsnh_profiles');
delete_site_option('lsnh_profiles');
delete_option('lsnh_settings');
delete_site_option('lsnh_settings');

