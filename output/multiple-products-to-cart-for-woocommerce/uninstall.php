<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wmc_ct_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mpcasc_code%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wmc_sorted_columns');
delete_site_option('wmc_sorted_columns');
delete_option('mpcasc_counter');
delete_site_option('mpcasc_counter');
delete_option('wmc_redirect');
delete_site_option('wmc_redirect');
delete_option('wmc_button_text');
delete_site_option('wmc_button_text');
delete_option('wmc_missed_variation_text');
delete_site_option('wmc_missed_variation_text');
delete_option('wmc_empty_form_text');
delete_site_option('wmc_empty_form_text');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('wmca_default_quantity');
delete_site_option('wmca_default_quantity');
delete_option('mpc_button_text_color');
delete_site_option('mpc_button_text_color');
delete_option('wmc_button_color');
delete_site_option('wmc_button_color');
delete_option('mpc_head_text_color');
delete_site_option('mpc_head_text_color');
delete_option('wmc_thead_back_color');
delete_site_option('wmc_thead_back_color');
delete_option('mpc_protitle_color');
delete_site_option('mpc_protitle_color');
delete_option('mpc_protitle_font_size');
delete_site_option('mpc_protitle_font_size');
delete_option('mpc_protitle_bold_font');
delete_site_option('mpc_protitle_bold_font');
delete_option('mpc_protitle_underline');
delete_site_option('mpc_protitle_underline');
delete_option('mpc_image_size');
delete_site_option('mpc_image_size');
delete_option('wmca_inline_dropdown');
delete_site_option('wmca_inline_dropdown');
delete_option('mpca_rate_us');
delete_site_option('mpca_rate_us');
delete_option('mpca_notify_pro');
delete_site_option('mpca_notify_pro');
delete_option('mpc_sddt_title_asc');
delete_site_option('mpc_sddt_title_asc');
delete_option('mpc_sddt_title_desc');
delete_site_option('mpc_sddt_title_desc');
delete_option('mpc_sddt_default');
delete_site_option('mpc_sddt_default');
delete_option('mpc_sddt_price_asc');
delete_site_option('mpc_sddt_price_asc');
delete_option('mpc_sddt_price_desc');
delete_site_option('mpc_sddt_price_desc');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'table_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'table_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'table_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'table_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_subscription_sign_up_fee' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_subscription_sign_up_fee' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_subscription_sign_up_fee' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_subscription_sign_up_fee' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );

