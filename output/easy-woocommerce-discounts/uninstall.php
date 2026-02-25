<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_conditions_admin_notices');
delete_site_option('woocommerce_conditions_admin_notices');
delete_option('woocommerce_conditions_db_version');
delete_site_option('woocommerce_conditions_db_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_added' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wccs_settings');
delete_site_option('wccs_settings');
delete_option('wccs_version');
delete_site_option('wccs_version');
delete_option('wccs_version_upgraded_from');
delete_site_option('wccs_version_upgraded_from');
delete_option('wccs_install_timestamp');
delete_site_option('wccs_install_timestamp');
delete_option('woocommerce_tax_round_at_subtotal');
delete_site_option('woocommerce_tax_round_at_subtotal');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_db_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('asnp_ewd_review');
delete_site_option('asnp_ewd_review');

// Delete Transients
delete_transient('wccs_installing');
delete_site_transient('wccs_installing');
delete_transient('wccs_discounted_products');
delete_site_transient('wccs_discounted_products');
delete_transient('wccs_can_read_variation_cached_prices_hash');
delete_site_transient('wccs_can_read_variation_cached_prices_hash');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wccs_can_read_variation_cached_prices_hash_%', '_site_transient_wccs_can_read_variation_cached_prices_hash_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_ewd_sale_badges_free_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_ewd_sale_badges_free_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_ewd_sale_badges_free_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_ewd_sale_badges_free_notice' ) );

