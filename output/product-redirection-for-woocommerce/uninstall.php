<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trash_warning_prfw');
delete_site_option('trash_warning_prfw');
delete_option('trash_disable_prfw');
delete_site_option('trash_disable_prfw');
delete_option('stock_notice_prfw');
delete_site_option('stock_notice_prfw');
delete_option('stock_notice_toggle_prfw');
delete_site_option('stock_notice_toggle_prfw');
delete_option('stock_recommendations_toggle_prfw');
delete_site_option('stock_recommendations_toggle_prfw');
delete_option('prfw_notice_dismissed_polyplugins');
delete_site_option('prfw_notice_dismissed_polyplugins');
delete_option('prfw_version_polyplugins');
delete_site_option('prfw_version_polyplugins');
delete_option('product_redirection_for_woocommerce_settings_polyplugins');
delete_site_option('product_redirection_for_woocommerce_settings_polyplugins');

