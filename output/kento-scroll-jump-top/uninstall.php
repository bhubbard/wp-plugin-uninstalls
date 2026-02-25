<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kp_scroll_to_top_display');
delete_site_option('kp_scroll_to_top_display');
delete_option('kt_scroll_to_top_themes');
delete_site_option('kt_scroll_to_top_themes');

