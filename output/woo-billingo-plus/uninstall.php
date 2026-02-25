<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_billingo_plus_auto_invoice_status');
delete_site_option('wc_billingo_plus_auto_invoice_status');
delete_option('wc_billingo_plus_auto_void_status');
delete_site_option('wc_billingo_plus_auto_void_status');
delete_option('wc_billingo_plus_automations');
delete_site_option('wc_billingo_plus_automations');
delete_option('wc_billingo_plus_advanced_options');
delete_site_option('wc_billingo_plus_advanced_options');
delete_option('wc_billingo_plus_vat_overrides');
delete_site_option('wc_billingo_plus_vat_overrides');
delete_option('wc_billingo_plus_eusafa');
delete_site_option('wc_billingo_plus_eusafa');
delete_option('wc_billingo_public_key');
delete_site_option('wc_billingo_public_key');
delete_option('wc_billingo_api_key');
delete_site_option('wc_billingo_api_key');
delete_option('_wc_billingo_plus_migrated');
delete_site_option('_wc_billingo_plus_migrated');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_billingo_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_billingo_plus_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_billingo_electronic');
delete_site_option('wc_billingo_electronic');
delete_option('wc_billingo_plus_invoice_type');
delete_site_option('wc_billingo_plus_invoice_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_billingo_payment_method_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_billingo_paymentdue_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_billingo_mark_as_paid_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_billingo_proforma_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_billingo_plus_payment_method_options');
delete_site_option('wc_billingo_plus_payment_method_options');
delete_option('_wc_billingo_plus_migrating');
delete_site_option('_wc_billingo_plus_migrating');
delete_option('wc_billingo_plus_api_key');
delete_site_option('wc_billingo_plus_api_key');
delete_option('_wc_billingo_plus_migrating_finished');
delete_site_option('_wc_billingo_plus_migrating_finished');
delete_option('_wc_billingo_plus_migrated_count');
delete_site_option('_wc_billingo_plus_migrated_count');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_pro_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_pro_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_pro_meta' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('_wc_billingo_pro_enabled');
delete_site_option('_wc_billingo_pro_enabled');
delete_option('_wc_billingo_pro_key');
delete_site_option('_wc_billingo_pro_key');
delete_option('_wc_billingo_pro_email');
delete_site_option('_wc_billingo_pro_email');
delete_option('_wc_billingo_pro_expiration_date');
delete_site_option('_wc_billingo_pro_expiration_date');
delete_option('wc_billingo_plus_additional_accounts');
delete_site_option('wc_billingo_plus_additional_accounts');
delete_option('wc_billingo_plus_notes');
delete_site_option('wc_billingo_plus_notes');
delete_option('wc_billingo_plus_rounding_options');
delete_site_option('wc_billingo_plus_rounding_options');
delete_option('_wc_billingo_plus_db_version');
delete_site_option('_wc_billingo_plus_db_version');
delete_option('wc_billingo_plus_version_number');
delete_site_option('wc_billingo_plus_version_number');
delete_option('woocommerce_wc_billingo_plus_settings');
delete_site_option('woocommerce_wc_billingo_plus_settings');
delete_option('wc_billingo_plus_vat_number_type');
delete_site_option('wc_billingo_plus_vat_number_type');
delete_option('wc_billingo_plus_invoice_type_company');
delete_site_option('wc_billingo_plus_invoice_type_company');
delete_option('woocommerce_wc_billingo_plus_settings_old');
delete_site_option('woocommerce_wc_billingo_plus_settings_old');
delete_option('surbma_hc_fields');
delete_site_option('surbma_hc_fields');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('_wc_billingo_plus_error');
delete_site_option('_wc_billingo_plus_error');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('wc_billingo_plus_invoice_blocks');
delete_site_transient('wc_billingo_plus_invoice_blocks');
delete_transient('wc_billingo_plus_bank_accounts');
delete_site_transient('wc_billingo_plus_bank_accounts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_billingo_plus_adoszam' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_billingo_plus_adoszam' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_billingo_plus_adoszam' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_billingo_plus_adoszam' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wc_billingo_plus_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wc_billingo_plus_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wc_billingo_plus_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wc_billingo_plus_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_tax_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_tax_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_tax_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_tax_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_billingo_plus_mennyisegi_egyseg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_billingo_plus_mennyisegi_egyseg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_billingo_plus_mennyisegi_egyseg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_billingo_plus_mennyisegi_egyseg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_billingo_plus_megjegyzes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_billingo_plus_megjegyzes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_billingo_plus_megjegyzes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_billingo_plus_megjegyzes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_billingo_plus_tetel_nev' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_billingo_plus_tetel_nev' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_billingo_plus_tetel_nev' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_billingo_plus_tetel_nev' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_billingo_plus_disable_auto_invoice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_billingo_plus_disable_auto_invoice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_billingo_plus_disable_auto_invoice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_billingo_plus_disable_auto_invoice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_billingo_plus_hide_item' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_billingo_plus_hide_item' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_billingo_plus_hide_item' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_billingo_plus_hide_item' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_billingo_plus_custom_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_billingo_plus_custom_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_billingo_plus_custom_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_billingo_plus_custom_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_billingo_plus_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_billingo_plus_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_billingo_plus_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_billingo_plus_admin_notices' ) );

