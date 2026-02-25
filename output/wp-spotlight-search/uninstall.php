<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_spotlight_setting');
delete_site_option('wp_spotlight_setting');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('wp_spotlight_admin_notice');
delete_site_option('wp_spotlight_admin_notice');
delete_option('wp_spotlight_update_notice');
delete_site_option('wp_spotlight_update_notice');

// Delete Transients
delete_transient('_wp_spotlight_setting_redirect_on_activation');
delete_site_transient('_wp_spotlight_setting_redirect_on_activation');

