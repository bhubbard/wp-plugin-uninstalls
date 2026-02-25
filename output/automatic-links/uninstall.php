<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autolink_nofollow');
delete_site_option('autolink_nofollow');
delete_option('autolink_enable_target');
delete_site_option('autolink_enable_target');
delete_option('autolink_target');
delete_site_option('autolink_target');

