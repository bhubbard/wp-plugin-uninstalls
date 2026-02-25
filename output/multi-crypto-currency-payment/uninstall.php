<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_mccp_settings');
delete_site_option('woocommerce_mccp_settings');
delete_option('woocommerce_mccp_account');
delete_site_option('woocommerce_mccp_account');
delete_option('woocommerce_mccp_secret');
delete_site_option('woocommerce_mccp_secret');
delete_option('woocommerce_mccp_wallets');
delete_site_option('woocommerce_mccp_wallets');
delete_option('mccp_db_version');
delete_site_option('mccp_db_version');

