<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blip_widget_last_cache');
delete_site_option('blip_widget_last_cache');
delete_option('blip_widget_cache');
delete_site_option('blip_widget_cache');
delete_option('blip_widget_feed');
delete_site_option('blip_widget_feed');

