<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_feature_custom_order_tables');
delete_site_option('woocommerce_feature_custom_order_tables');
delete_option('buyguard_restriction_rules');
delete_site_option('buyguard_restriction_rules');

// Delete Transients
delete_transient('buyguard_cleanup_notice');
delete_site_transient('buyguard_cleanup_notice');
delete_transient('buyguard_rules_cache');
delete_site_transient('buyguard_rules_cache');
delete_transient('buyguard_activation_notice');
delete_site_transient('buyguard_activation_notice');

