<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_colors');
delete_site_option('woocommerce_colors');
delete_option('woocommerce_colors_css');
delete_site_option('woocommerce_colors_css');
delete_option('woocommerce_frontend_css_colors');
delete_site_option('woocommerce_frontend_css_colors');
delete_option('woocommerce_admin_notices');
delete_site_option('woocommerce_admin_notices');

