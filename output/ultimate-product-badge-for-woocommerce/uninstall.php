<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_db_version');
delete_site_option('woocommerce_db_version');
delete_option('ultimate_product_badge_for_woocommerce_do_activation_redirect');
delete_site_option('ultimate_product_badge_for_woocommerce_do_activation_redirect');
delete_option('ultimate_product_badge_for_woocommerce');
delete_site_option('ultimate_product_badge_for_woocommerce');

