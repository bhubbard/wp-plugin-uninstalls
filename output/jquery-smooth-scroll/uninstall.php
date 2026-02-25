<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jss_scroll_to_top_image');
delete_site_option('jss_scroll_to_top_image');
delete_option('jamify_jquery_smooth_scroll_image');
delete_site_option('jamify_jquery_smooth_scroll_image');

