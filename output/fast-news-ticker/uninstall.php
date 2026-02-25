<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fnt_api_settings');
delete_site_option('fnt_api_settings');
delete_option('wwdev_marquee_text');
delete_site_option('wwdev_marquee_text');

