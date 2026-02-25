<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('profitblue_cogs_tables_created');
delete_site_option('profitblue_cogs_tables_created');
delete_option('profitblue_cogs_period_created');
delete_site_option('profitblue_cogs_period_created');
delete_option('profitblue_notifications-settings');
delete_site_option('profitblue_notifications-settings');
delete_option('profitblue-use-this-payment-period');
delete_site_option('profitblue-use-this-payment-period');
delete_option('profitblue-use-this-shipping-period');
delete_site_option('profitblue-use-this-shipping-period');
delete_option('profitblue-use-this-shop-setting-period');
delete_site_option('profitblue-use-this-shop-setting-period');
delete_option('profitblue_shipping_orders_buffer');
delete_site_option('profitblue_shipping_orders_buffer');
delete_option('profitblue_batch');
delete_site_option('profitblue_batch');
delete_option('profitblue_instalation_finish');
delete_site_option('profitblue_instalation_finish');
delete_option('profitblue_licence_response');
delete_site_option('profitblue_licence_response');
delete_option('profitblue_licence_status');
delete_site_option('profitblue_licence_status');
delete_option('profitblue_licence_key');
delete_site_option('profitblue_licence_key');
delete_option('profitblue_pnl_cache');
delete_site_option('profitblue_pnl_cache');
delete_option('profitblue_install_step');
delete_site_option('profitblue_install_step');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'profitblue_daily_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'profitblue_weekly_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'profitblue_monthly_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'profitblue_yearly_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_orders_buffer' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('profitblue-notifications-settings');
delete_site_option('profitblue-notifications-settings');
delete_option('profitblue_payment_orders_buffer');
delete_site_option('profitblue_payment_orders_buffer');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
delete_option('profitblue_free_check');
delete_site_option('profitblue_free_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'profitblue_wizard_current_step' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'profitblue_wizard_current_step' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'profitblue_wizard_current_step' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'profitblue_wizard_current_step' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cogs_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cogs_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cogs_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cogs_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'profitblue_is_wizard_finish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'profitblue_is_wizard_finish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'profitblue_is_wizard_finish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'profitblue_is_wizard_finish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_profitblue_import' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_profitblue_import' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_profitblue_import' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_profitblue_import' ) );

