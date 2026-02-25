<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weblizar_facebook_shortcode_settings');
delete_site_option('weblizar_facebook_shortcode_settings');
delete_option('weblizar_facebook_feed_option_settings');
delete_site_option('weblizar_facebook_feed_option_settings');

