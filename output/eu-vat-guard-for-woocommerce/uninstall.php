<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eu_vat_guard_hide_registration_fields');
delete_site_option('eu_vat_guard_hide_registration_fields');
delete_option('eu_vat_guard_require_company');
delete_site_option('eu_vat_guard_require_company');
delete_option('eu_vat_guard_require_vat');
delete_site_option('eu_vat_guard_require_vat');
delete_option('eu_vat_guard_require_vies');
delete_site_option('eu_vat_guard_require_vies');
delete_option('eu_vat_guard_ignore_vies_error');
delete_site_option('eu_vat_guard_ignore_vies_error');
delete_option('eu_vat_guard_enable_block_checkout');
delete_site_option('eu_vat_guard_enable_block_checkout');
delete_option('eu_vat_guard_disable_exemption');
delete_site_option('eu_vat_guard_disable_exemption');
delete_option('eu_vat_guard_fixed_prices');
delete_site_option('eu_vat_guard_fixed_prices');
delete_option('eu_vat_guard_company_label');
delete_site_option('eu_vat_guard_company_label');
delete_option('eu_vat_guard_vat_label');
delete_site_option('eu_vat_guard_vat_label');
delete_option('eu_vat_guard_exemption_message');
delete_site_option('eu_vat_guard_exemption_message');
delete_option('eu_vat_guard_override_b2b_plugins');
delete_site_option('eu_vat_guard_override_b2b_plugins');
delete_option('woocommerce_tax_classes');
delete_site_option('woocommerce_tax_classes');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_eu_vat_guard_admin_error_%', '_site_transient_eu_vat_guard_admin_error_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_is_vat_exempt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_is_vat_exempt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_is_vat_exempt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_is_vat_exempt' ) );

