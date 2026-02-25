<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_bacs_accounts');
delete_site_option('woocommerce_bacs_accounts');
delete_option('wpo_wcpdf_review_notice_dismissed');
delete_site_option('wpo_wcpdf_review_notice_dismissed');
delete_option('wpo_wcpdf_review_notice_shown');
delete_site_option('wpo_wcpdf_review_notice_shown');
delete_option('wpo_wcpdf_install_notice_dismissed');
delete_site_option('wpo_wcpdf_install_notice_dismissed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpo_wcpdf_count_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpo_wcpdf_documents_settings_invoice');
delete_site_option('wpo_wcpdf_documents_settings_invoice');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpo_wcpdf_documents_settings_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpo_wcpdf_settings_debug');
delete_site_option('wpo_wcpdf_settings_debug');
delete_option('german_market_product_images_in_order');
delete_site_option('german_market_product_images_in_order');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');
delete_option('wpo_wcpdf_settings_general');
delete_site_option('wpo_wcpdf_settings_general');
delete_option('wpo_wcpdf_general_settings');
delete_site_option('wpo_wcpdf_general_settings');
delete_option('wpo_wcpdf_template_settings');
delete_site_option('wpo_wcpdf_template_settings');
delete_option('wpo_wcpdf_next_invoice_number');
delete_site_option('wpo_wcpdf_next_invoice_number');
delete_option('wpo_wcpdf_debug_settings');
delete_site_option('wpo_wcpdf_debug_settings');
delete_option('ubl_wc_general');
delete_site_option('ubl_wc_general');
delete_option('wpo_wcpdf_documents_settings_invoice_ubl');
delete_site_option('wpo_wcpdf_documents_settings_invoice_ubl');
delete_option('ubl_wc_taxes');
delete_site_option('ubl_wc_taxes');
delete_option('wpo_wcpdf_settings_ubl_taxes');
delete_site_option('wpo_wcpdf_settings_ubl_taxes');
delete_option('wpo_wcpdf_dismiss_shop_address_notice');
delete_site_option('wpo_wcpdf_dismiss_shop_address_notice');
delete_option('wpo_ips_edi_tax_settings');
delete_site_option('wpo_ips_edi_tax_settings');
delete_option('wpo_ips_edi_settings');
delete_site_option('wpo_ips_edi_settings');
delete_option('wpo_wcpdf_no_dir_error');
delete_site_option('wpo_wcpdf_no_dir_error');
delete_option('wpo_wcpdf_random_string');
delete_site_option('wpo_wcpdf_random_string');
delete_option('wpo_wcpdf_dismiss_requirements_notice');
delete_site_option('wpo_wcpdf_dismiss_requirements_notice');
delete_option('wpocore_settings');
delete_site_option('wpocore_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%::last_time' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpo_wcpdf_hide_attachments_hint');
delete_site_option('wpo_wcpdf_hide_attachments_hint');
delete_option('wpo_wcpdf_extensions_license_cache');
delete_site_option('wpo_wcpdf_extensions_license_cache');
delete_option('wpo_wcpdf_installed_template_paths');
delete_site_option('wpo_wcpdf_installed_template_paths');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('wpo_wcpdf_hide_promo_ad');
delete_site_option('wpo_wcpdf_hide_promo_ad');
delete_option('wpo_wcpdf_hide_extensions_ad');
delete_site_option('wpo_wcpdf_hide_extensions_ad');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_country');
delete_site_option('woocommerce_store_country');
delete_option('woocommerce_store_state');
delete_site_option('woocommerce_store_state');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wpo_wcpdf_hide_nginx_notice');
delete_site_option('wpo_wcpdf_hide_nginx_notice');
delete_option('wpo_wcpdf_hide_mailpoet_notice');
delete_site_option('wpo_wcpdf_hide_mailpoet_notice');
delete_option('wpo_wcpdf_hide_rtl_notice');
delete_site_option('wpo_wcpdf_hide_rtl_notice');
delete_option('wpo_wcpdf_unstable_version_state');
delete_site_option('wpo_wcpdf_unstable_version_state');

// Delete Transients
delete_transient('wpo_wcpdf_new_install');
delete_site_transient('wpo_wcpdf_new_install');
delete_transient('wpo_wcpdf_subfolder_fonts_has_files');
delete_site_transient('wpo_wcpdf_subfolder_fonts_has_files');
delete_transient('wpo_wcpdf_flush_rewrite_rules');
delete_site_transient('wpo_wcpdf_flush_rewrite_rules');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'peppol_endpoint_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'peppol_endpoint_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'peppol_endpoint_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'peppol_endpoint_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'peppol_endpoint_eas' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'peppol_endpoint_eas' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'peppol_endpoint_eas' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'peppol_endpoint_eas' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpo_ips_checkout_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpo_ips_checkout_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpo_ips_checkout_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpo_ips_checkout_field' ) );

