<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sls_logo_table_version');
delete_site_option('sls_logo_table_version');
delete_option('sls_title_slider');
delete_site_option('sls_title_slider');
delete_option('sls_settings');
delete_site_option('sls_settings');
delete_option('sls_slides_to_show');
delete_site_option('sls_slides_to_show');
delete_option('sls_slides_to_scroll');
delete_site_option('sls_slides_to_scroll');
delete_option('sls_autoplay');
delete_site_option('sls_autoplay');
delete_option('sls_autoplay_speed');
delete_site_option('sls_autoplay_speed');
delete_option('sls_arrows');
delete_site_option('sls_arrows');
delete_option('sls_dots');
delete_site_option('sls_dots');
delete_option('sls_pause_on_hover');
delete_site_option('sls_pause_on_hover');

