<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('woocommerce_price_thousand_sep');
delete_site_option('woocommerce_price_thousand_sep');

// Delete Transients
delete_transient('_wc_ecp_admin_notices');
delete_site_transient('_wc_ecp_admin_notices');
delete_transient('_wc_ecp_admin_runtime_errors');
delete_site_transient('_wc_ecp_admin_runtime_errors');

// Clear Cron Jobs
wp_clear_scheduled_hook('ecp_flush_rewrite_rules');

