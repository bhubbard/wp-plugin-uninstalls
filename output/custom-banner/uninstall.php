<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom_banner_banner_text');
delete_site_option('custom_banner_banner_text');
delete_option('custom_banner_autoplay');
delete_site_option('custom_banner_autoplay');
delete_option('custom_banner_delay');
delete_site_option('custom_banner_delay');
delete_option('custom_banner_enabled');
delete_site_option('custom_banner_enabled');
delete_option('custom_banner_text_color');
delete_site_option('custom_banner_text_color');
delete_option('custom_banner_background_color');
delete_site_option('custom_banner_background_color');
delete_option('custom_banner_width');
delete_site_option('custom_banner_width');
delete_option('custom_banner_arrows');
delete_site_option('custom_banner_arrows');
delete_option('custom_banner_enable');
delete_site_option('custom_banner_enable');
delete_option('custom_banner_action_hook');
delete_site_option('custom_banner_action_hook');
delete_option('custom_banner_css_class');
delete_site_option('custom_banner_css_class');

