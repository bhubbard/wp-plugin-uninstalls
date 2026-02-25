<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocz_carousel_options');
delete_site_option('woocz_carousel_options');
delete_option('woocz_zoom_options');
delete_site_option('woocz_zoom_options');
delete_option('woocz-display-activation-message');
delete_site_option('woocz-display-activation-message');

