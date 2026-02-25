<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wc_etransactions_account_environment');
delete_site_option('wc_etransactions_account_environment');
delete_option('woocommerce_etransactions_std_env');
delete_site_option('woocommerce_etransactions_std_env');
delete_option('woocommerce_etransactions_std_settings');
delete_site_option('woocommerce_etransactions_std_settings');
delete_option('woocommerce_etransactions_std_test_settings');
delete_site_option('woocommerce_etransactions_std_test_settings');

// Delete Transients
delete_transient('wc_etransaction_active_plugins');
delete_site_transient('wc_etransaction_active_plugins');
delete_transient('wc_etransaction_inactive_plugins');
delete_site_transient('wc_etransaction_inactive_plugins');

// Clear Cron Jobs

