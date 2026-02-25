<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('responsive_lightbox_lite_version');
delete_site_option('responsive_lightbox_lite_version');
delete_option('responsive_lightbox_lite_settings');
delete_site_option('responsive_lightbox_lite_settings');

