<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rs_enabled');
delete_site_option('rs_enabled');
delete_option('rs_content');
delete_site_option('rs_content');
delete_option('rs_display_secs');
delete_site_option('rs_display_secs');
delete_option('rs_hide_days');
delete_site_option('rs_hide_days');

