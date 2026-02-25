<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_heleket-crypto-gateway-for-woocommerce_settings');
delete_site_option('woocommerce_heleket-crypto-gateway-for-woocommerce_settings');
delete_option('heleket_method_image');
delete_site_option('heleket_method_image');

