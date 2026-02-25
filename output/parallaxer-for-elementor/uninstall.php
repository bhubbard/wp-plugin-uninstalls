<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('parallaxer_smooth_scroll_enabled');
delete_site_option('parallaxer_smooth_scroll_enabled');

