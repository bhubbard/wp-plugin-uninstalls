<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blockbolt_merchant_name');
delete_site_option('blockbolt_merchant_name');
delete_option('blockbolt_blockchains');
delete_site_option('blockbolt_blockchains');
delete_option('woocommerce_blockbolt_offsite_settings');
delete_site_option('woocommerce_blockbolt_offsite_settings');

