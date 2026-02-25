<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsite_follow_us_badges_version');
delete_site_option('wpsite_follow_us_badges_version');
delete_option('wpsite_follow_us_settings');
delete_site_option('wpsite_follow_us_settings');

