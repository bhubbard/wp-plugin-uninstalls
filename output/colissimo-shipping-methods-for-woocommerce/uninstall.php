<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lpc_feedback_dismissed');
delete_site_option('lpc_feedback_dismissed');
delete_option('lpc_asked_feedback');
delete_site_option('lpc_asked_feedback');
delete_option('lpc_accepted_cgv');
delete_site_option('lpc_accepted_cgv');
delete_option('lpc_jquery_warning_dismissed_notice');
delete_site_option('lpc_jquery_warning_dismissed_notice');
delete_option('lpc_jquery_migrate_wp56_dismissed_notice');
delete_site_option('lpc_jquery_migrate_wp56_dismissed_notice');
delete_option('lpc_packagings');
delete_site_option('lpc_packagings');
delete_option('lpc_secured_return');
delete_site_option('lpc_secured_return');
delete_option('lpc_current_credentials_tested');
delete_site_option('lpc_current_credentials_tested');
delete_option('lpc_current_credentials_valid');
delete_site_option('lpc_current_credentials_valid');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lpc_expert_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lpc_domicileas_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lpc_origin_company_name');
delete_site_option('lpc_origin_company_name');
delete_option('lpc_parent_id_webservices');
delete_site_option('lpc_parent_id_webservices');
delete_option('lpc_pickup_map_type');
delete_site_option('lpc_pickup_map_type');
delete_option('lpc_pwd_webservices');
delete_site_option('lpc_pwd_webservices');
delete_option('lpc_pwd_encrypted');
delete_site_option('lpc_pwd_encrypted');
delete_option('lpc_no_shipping_class_updated');
delete_site_option('lpc_no_shipping_class_updated');
delete_option('lpc_customers_download_return_label');
delete_site_option('lpc_customers_download_return_label');
delete_option('lpc_relay_types');
delete_site_option('lpc_relay_types');
delete_option('lpc_capabilities_per_country_fr');
delete_site_option('lpc_capabilities_per_country_fr');
delete_option('lpc_capabilities_per_country_dom1');
delete_site_option('lpc_capabilities_per_country_dom1');
delete_option('lpc_capabilities_per_country');
delete_site_option('lpc_capabilities_per_country');
delete_option('lpc_domiciless_IsAlwaysFree');
delete_site_option('lpc_domiciless_IsAlwaysFree');
delete_option('lpc_domicileas_IsAlwaysFree');
delete_site_option('lpc_domicileas_IsAlwaysFree');
delete_option('lpc_expert_IsAlwaysFree');
delete_site_option('lpc_expert_IsAlwaysFree');
delete_option('lpc_relay_IsAlwaysFree');
delete_site_option('lpc_relay_IsAlwaysFree');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');

// Delete Transients
delete_transient('wc_attribute_taxonomies');
delete_site_transient('wc_attribute_taxonomies');

// Clear Cron Jobs
wp_clear_scheduled_hook('purge_colissimo_labels');
wp_clear_scheduled_hook('update_colissimo_statuses');

