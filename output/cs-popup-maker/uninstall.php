<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_smart_preloader_pro_options');
delete_site_option('wp_smart_preloader_pro_options');
delete_option('cs-popup');
delete_site_option('cs-popup');
delete_option('cs-popup-html');
delete_site_option('cs-popup-html');

