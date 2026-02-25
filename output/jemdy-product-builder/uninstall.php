<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jdpb_settings_builder');
delete_site_option('jdpb_settings_builder');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('jdpb_theme_tokens');
delete_site_option('jdpb_theme_tokens');

