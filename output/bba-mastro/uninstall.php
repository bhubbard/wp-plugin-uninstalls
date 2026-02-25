<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bba_admin_custom_order_fields');
delete_site_option('bba_admin_custom_order_fields');
delete_option('bba_token');
delete_site_option('bba_token');
delete_option('bba_token_expiration');
delete_site_option('bba_token_expiration');
delete_option('woocommerce_allowed_countries');
delete_site_option('woocommerce_allowed_countries');
delete_option('woocommerce_bbamastro_rules_settings');
delete_site_option('woocommerce_bbamastro_rules_settings');
delete_option('bba_admin_custom_order_field_next_field_id');
delete_site_option('bba_admin_custom_order_field_next_field_id');

// Delete Transients
delete_transient('wc_attribute_taxonomies');
delete_site_transient('wc_attribute_taxonomies');

