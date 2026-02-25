<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maakapay_test');
delete_site_option('maakapay_test');
delete_option('maakapay_live');
delete_site_option('maakapay_live');
delete_option('maakapay_mode');
delete_site_option('maakapay_mode');
delete_option('maakapay_admin_mail');
delete_site_option('maakapay_admin_mail');
delete_option('woocommerce_maakapay_for_woocommerce_checkout_settings');
delete_site_option('woocommerce_maakapay_for_woocommerce_checkout_settings');

