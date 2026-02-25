<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flizpay_rewrite_rules_flushed');
delete_site_option('flizpay_rewrite_rules_flushed');
delete_option('woocommerce_flizpay_settings');
delete_site_option('woocommerce_flizpay_settings');

// Delete Transients
delete_transient('flizpay_cashback_transient');
delete_site_transient('flizpay_cashback_transient');
delete_transient('flizpay_transient');
delete_site_transient('flizpay_transient');

