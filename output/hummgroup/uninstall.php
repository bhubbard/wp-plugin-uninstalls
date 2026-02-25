<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_humm_settings');
delete_site_option('woocommerce_humm_settings');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');

