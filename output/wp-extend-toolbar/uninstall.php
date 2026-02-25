<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_extend_toolbar_display_settings');
delete_site_option('wp_extend_toolbar_display_settings');

