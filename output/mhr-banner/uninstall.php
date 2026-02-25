<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mhr_banner_status');
delete_site_option('mhr_banner_status');
delete_option('mhr_banner_source');
delete_site_option('mhr_banner_source');
delete_option('mhr_click_url');
delete_site_option('mhr_click_url');
delete_option('mhr_backg_color');
delete_site_option('mhr_backg_color');
delete_option('mhr_banner_height');
delete_site_option('mhr_banner_height');
delete_option('mhr_banner_width');
delete_site_option('mhr_banner_width');
delete_option('mhr_background_height');
delete_site_option('mhr_background_height');
delete_option('mhr_background_bottom');
delete_site_option('mhr_background_bottom');

