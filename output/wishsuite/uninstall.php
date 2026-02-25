<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woolentor_others_tabs');
delete_site_option('woolentor_others_tabs');
delete_option('wishsuite_do_activation_redirect');
delete_site_option('wishsuite_do_activation_redirect');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('wishsuite_installed');
delete_site_option('wishsuite_installed');
delete_option('wishsuite_version');
delete_site_option('wishsuite_version');
delete_option('wishsuite_table_settings_tabs');
delete_site_option('wishsuite_table_settings_tabs');
delete_option('wishsuite_settings_tabs');
delete_site_option('wishsuite_settings_tabs');
delete_option('wishsuite_style_settings_tabs');
delete_site_option('wishsuite_style_settings_tabs');

// Clear Cron Jobs
wp_clear_scheduled_hook('wishsuite_remove_guest_old_wishlist_items');

