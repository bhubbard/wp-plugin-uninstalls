<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wooei_version');
delete_site_option('wooei_version');
delete_option('wooei_customizations');
delete_site_option('wooei_customizations');
delete_option('wooei_invoice_type');
delete_site_option('wooei_invoice_type');
delete_option('wooei_invoice_filename_format');
delete_site_option('wooei_invoice_filename_format');
delete_option('wooei_invoice_attach_invoice');
delete_site_option('wooei_invoice_attach_invoice');
delete_option('wooei_invoice_attach');
delete_site_option('wooei_invoice_attach');
delete_option('wooei_company_name');
delete_site_option('wooei_company_name');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_customizations' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_override_last_invoice_number' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_last_invoice_number' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wooei_id_type');
delete_site_option('wooei_id_type');
delete_option('wooei_id_company');
delete_site_option('wooei_id_company');
delete_option('wooei_shop_phone');
delete_site_option('wooei_shop_phone');
delete_option('wooei_shop_email');
delete_site_option('wooei_shop_email');
delete_option('wooei_id_vat');
delete_site_option('wooei_id_vat');
delete_option('wooei_msic_code');
delete_site_option('wooei_msic_code');
delete_option('wooei_msic_name');
delete_site_option('wooei_msic_name');
delete_option('wooei_numbering_strategy');
delete_site_option('wooei_numbering_strategy');
delete_option('wooei_generate_pending_invoices');
delete_site_option('wooei_generate_pending_invoices');
delete_option('wooei_invoice_reset_number');
delete_site_option('wooei_invoice_reset_number');
delete_option('wooei_invoice_number_padding');
delete_site_option('wooei_invoice_number_padding');
delete_option('wooei_invoice_number_format');
delete_site_option('wooei_invoice_number_format');
delete_option('wooei_last_invoice_number');
delete_site_option('wooei_last_invoice_number');
delete_option('wooei_last_invoice_date');
delete_site_option('wooei_last_invoice_date');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('wooei_just_activated');
delete_site_transient('wooei_just_activated');
delete_transient('wooei_just_upgraded');
delete_site_transient('wooei_just_upgraded');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wooei_commodity_classification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wooei_commodity_classification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wooei_commodity_classification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wooei_commodity_classification' ) );

