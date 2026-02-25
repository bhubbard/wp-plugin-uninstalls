<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('nvl_wl_n');
delete_site_option('nvl_wl_n');
delete_option('nvl_wl_d');
delete_site_option('nvl_wl_d');
delete_option('nvl_wl_a');
delete_site_option('nvl_wl_a');
delete_option('nouvello-worker-activation-key');
delete_site_option('nouvello-worker-activation-key');
delete_option('nvl_wemanage_worker_wp');
delete_site_option('nvl_wemanage_worker_wp');
delete_option('nvl_wemanage_worker_wc');
delete_site_option('nvl_wemanage_worker_wc');
delete_option('site_admins');
delete_site_option('site_admins');
delete_option('nouvello_redirect_after_activation_option');
delete_site_option('nouvello_redirect_after_activation_option');

// Delete Transients
delete_transient('nvl_wemanage_manual');
delete_site_transient('nvl_wemanage_manual');
delete_transient('ns-wmw-key');
delete_site_transient('ns-wmw-key');
delete_transient('ns-wmw-secret');
delete_site_transient('ns-wmw-secret');
delete_transient('ns-wmw-wc-key');
delete_site_transient('ns-wmw-wc-key');
delete_transient('ns-wmw-wc-secret');
delete_site_transient('ns-wmw-wc-secret');

