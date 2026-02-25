<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('catalogx_plugin_version');
delete_site_option('catalogx_plugin_version');
delete_option('catalogx_plugin_activated');
delete_site_option('catalogx_plugin_activated');
delete_option('catalogx_enquiry_form_customization_settings');
delete_site_option('catalogx_enquiry_form_customization_settings');
delete_option('catalogx_plugin_installed');
delete_site_option('catalogx_plugin_installed');
delete_option('catalogx_tour_active');
delete_site_option('catalogx_tour_active');
delete_option('catalogx_tour_version');
delete_site_option('catalogx_tour_version');
delete_option('catalogx_request_quote_page');
delete_site_option('catalogx_request_quote_page');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_catalogx_session_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mvx_catalog_general_tab_settings');
delete_site_option('mvx_catalog_general_tab_settings');
delete_option('catalogx_all_settings_settings');
delete_site_option('catalogx_all_settings_settings');
delete_option('catalogx_enquiry_email_temp_settings');
delete_site_option('catalogx_enquiry_email_temp_settings');
delete_option('catalogx_enquiry_cart_page');
delete_site_option('catalogx_enquiry_cart_page');
delete_option('wholesale_products_page');
delete_site_option('wholesale_products_page');
delete_option('catalogx_pages_settings');
delete_site_option('catalogx_pages_settings');
delete_option('catalogx_wholesale_registration_settings');
delete_site_option('catalogx_wholesale_registration_settings');
delete_option('catalogx_enquiry-catalog-customization_settings');
delete_site_option('catalogx_enquiry-catalog-customization_settings');
delete_option('catalogx_enquiry_catalog_customization_settings');
delete_site_option('catalogx_enquiry_catalog_customization_settings');
delete_option('catalogx_all-settings_settings');
delete_site_option('catalogx_all-settings_settings');
delete_option('catalogx_enquiry-quote-exclusion_settings');
delete_site_option('catalogx_enquiry-quote-exclusion_settings');
delete_option('catalogx_enquiry_quote_exclusion_settings');
delete_site_option('catalogx_enquiry_quote_exclusion_settings');
delete_option('catalogx_enquiry-form-customization_settings');
delete_site_option('catalogx_enquiry-form-customization_settings');
delete_option('catalogx_enquiry-email-temp_settings');
delete_site_option('catalogx_enquiry-email-temp_settings');
delete_option('catalogx_wholesale-registration_settings');
delete_site_option('catalogx_wholesale-registration_settings');
delete_option('mvx_catalog_button_appearance_tab_settings');
delete_site_option('mvx_catalog_button_appearance_tab_settings');
delete_option('catalogx_tools_settings');
delete_site_option('catalogx_tools_settings');
delete_option('mvx_catalog_enquiry_form_tab_settings');
delete_site_option('mvx_catalog_enquiry_form_tab_settings');
delete_option('mvx_catalog_pro_enquiry_form_data');
delete_site_option('mvx_catalog_pro_enquiry_form_data');
delete_option('mvx_catalog_exclusion_tab_settings');
delete_site_option('mvx_catalog_exclusion_tab_settings');
delete_option('woocommerce_catalog_enquiry_from_settings');
delete_site_option('woocommerce_catalog_enquiry_from_settings');
delete_option('woocommerce_catalog_enquiry_general_settings');
delete_site_option('woocommerce_catalog_enquiry_general_settings');
delete_option('woocommerce_catalog_enquiry_exclusion_settings');
delete_site_option('woocommerce_catalog_enquiry_exclusion_settings');
delete_option('woocommerce_catalog_enquiry_button_appearence_settings');
delete_site_option('woocommerce_catalog_enquiry_button_appearence_settings');

// Delete Transients
delete_transient('variation_list');
delete_site_transient('variation_list');

// Clear Cron Jobs
wp_clear_scheduled_hook('quote_clean_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vendor_enquiry_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vendor_enquiry_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vendor_enquiry_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vendor_enquiry_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mvx_vendor_catalog_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mvx_vendor_catalog_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mvx_vendor_catalog_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mvx_vendor_catalog_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'catalog_per_product_desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'catalog_per_product_desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'catalog_per_product_desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'catalog_per_product_desc' ) );

