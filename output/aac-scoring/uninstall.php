<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('icon_fonts_settings');
delete_site_option('icon_fonts_settings');
delete_option('responsive_lightbox_settings');
delete_site_option('responsive_lightbox_settings');
delete_option('sccss_settings');
delete_site_option('sccss_settings');

