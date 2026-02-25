<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wrt_responsive_tabs_msg');
delete_site_option('wrt_responsive_tabs_msg');
delete_option('wp_vgallery_thumbnail_msg');
delete_site_option('wp_vgallery_thumbnail_msg');

