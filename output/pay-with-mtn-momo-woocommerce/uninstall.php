<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_momopay_settings');
delete_site_option('woocommerce_momopay_settings');
delete_option('wc_momopay_adv_data');
delete_site_option('wc_momopay_adv_data');

