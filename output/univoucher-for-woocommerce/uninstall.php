<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('univoucher_wc_alchemy_api_key');
delete_site_option('univoucher_wc_alchemy_api_key');
delete_option('univoucher_wc_show_on_demand_limit');
delete_site_option('univoucher_wc_show_on_demand_limit');
delete_option('univoucher_wc_database_key_backup_confirmed');
delete_site_option('univoucher_wc_database_key_backup_confirmed');
delete_option('univoucher_wc_wallet_private_key');
delete_site_option('univoucher_wc_wallet_private_key');
delete_option('univoucher_wc_wallet_public_key');
delete_site_option('univoucher_wc_wallet_public_key');
delete_option('univoucher_wc_show_in_order_details');
delete_site_option('univoucher_wc_show_in_order_details');
delete_option('univoucher_wc_cards_display_position');
delete_site_option('univoucher_wc_cards_display_position');
delete_option('univoucher_wc_auto_complete_orders');
delete_site_option('univoucher_wc_auto_complete_orders');
delete_option('univoucher_wc_send_email_cards');
delete_site_option('univoucher_wc_send_email_cards');
delete_option('univoucher_wc_send_email_only_fully_assigned');
delete_site_option('univoucher_wc_send_email_only_fully_assigned');
delete_option('univoucher_wc_email_subject');
delete_site_option('univoucher_wc_email_subject');
delete_option('univoucher_wc_email_template');
delete_site_option('univoucher_wc_email_template');
delete_option('univoucher_wc_auto_create_backordered_cards');
delete_site_option('univoucher_wc_auto_create_backordered_cards');
delete_option('univoucher_wc_show_unassigned_notice');
delete_site_option('univoucher_wc_show_unassigned_notice');
delete_option('univoucher_wc_unassigned_notice_text');
delete_site_option('univoucher_wc_unassigned_notice_text');
delete_option('univoucher_wc_on_demand_order_limit');
delete_site_option('univoucher_wc_on_demand_order_limit');
delete_option('univoucher_wc_on_demand_error_message');
delete_site_option('univoucher_wc_on_demand_error_message');
delete_option('univoucher_wc_on_demand_cart_limit');
delete_site_option('univoucher_wc_on_demand_cart_limit');
delete_option('univoucher_wc_lmfwc_integration');
delete_site_option('univoucher_wc_lmfwc_integration');
delete_option('univoucher_wc_lmfwc_license_key_template');
delete_site_option('univoucher_wc_lmfwc_license_key_template');
delete_option('univoucher_wc_lmfwc_show_abandoned_date');
delete_site_option('univoucher_wc_lmfwc_show_abandoned_date');
delete_option('univoucher_wc_lmfwc_include_in_all_licenses');
delete_site_option('univoucher_wc_lmfwc_include_in_all_licenses');
delete_option('univoucher_wc_title_template');
delete_site_option('univoucher_wc_title_template');
delete_option('univoucher_wc_short_description_template');
delete_site_option('univoucher_wc_short_description_template');
delete_option('univoucher_wc_description_template');
delete_site_option('univoucher_wc_description_template');
delete_option('univoucher_wc_image_template');
delete_site_option('univoucher_wc_image_template');
delete_option('univoucher_wc_image_show_amount_with_symbol');
delete_site_option('univoucher_wc_image_show_amount_with_symbol');
delete_option('univoucher_wc_image_show_amount');
delete_site_option('univoucher_wc_image_show_amount');
delete_option('univoucher_wc_image_show_token_symbol');
delete_site_option('univoucher_wc_image_show_token_symbol');
delete_option('univoucher_wc_image_show_network_name');
delete_site_option('univoucher_wc_image_show_network_name');
delete_option('univoucher_wc_image_show_token_logo');
delete_site_option('univoucher_wc_image_show_token_logo');
delete_option('univoucher_wc_image_show_network_logo');
delete_site_option('univoucher_wc_image_show_network_logo');
delete_option('univoucher_wc_image_amount_with_symbol_font');
delete_site_option('univoucher_wc_image_amount_with_symbol_font');
delete_option('univoucher_wc_image_amount_with_symbol_size');
delete_site_option('univoucher_wc_image_amount_with_symbol_size');
delete_option('univoucher_wc_image_amount_with_symbol_color');
delete_site_option('univoucher_wc_image_amount_with_symbol_color');
delete_option('univoucher_wc_image_amount_with_symbol_align');
delete_site_option('univoucher_wc_image_amount_with_symbol_align');
delete_option('univoucher_wc_image_amount_with_symbol_x');
delete_site_option('univoucher_wc_image_amount_with_symbol_x');
delete_option('univoucher_wc_image_amount_with_symbol_y');
delete_site_option('univoucher_wc_image_amount_with_symbol_y');
delete_option('univoucher_wc_image_amount_font');
delete_site_option('univoucher_wc_image_amount_font');
delete_option('univoucher_wc_image_amount_size');
delete_site_option('univoucher_wc_image_amount_size');
delete_option('univoucher_wc_image_amount_color');
delete_site_option('univoucher_wc_image_amount_color');
delete_option('univoucher_wc_image_amount_align');
delete_site_option('univoucher_wc_image_amount_align');
delete_option('univoucher_wc_image_amount_x');
delete_site_option('univoucher_wc_image_amount_x');
delete_option('univoucher_wc_image_amount_y');
delete_site_option('univoucher_wc_image_amount_y');
delete_option('univoucher_wc_image_token_symbol_font');
delete_site_option('univoucher_wc_image_token_symbol_font');
delete_option('univoucher_wc_image_token_symbol_size');
delete_site_option('univoucher_wc_image_token_symbol_size');
delete_option('univoucher_wc_image_token_symbol_color');
delete_site_option('univoucher_wc_image_token_symbol_color');
delete_option('univoucher_wc_image_token_symbol_align');
delete_site_option('univoucher_wc_image_token_symbol_align');
delete_option('univoucher_wc_image_token_symbol_x');
delete_site_option('univoucher_wc_image_token_symbol_x');
delete_option('univoucher_wc_image_token_symbol_y');
delete_site_option('univoucher_wc_image_token_symbol_y');
delete_option('univoucher_wc_image_network_name_font');
delete_site_option('univoucher_wc_image_network_name_font');
delete_option('univoucher_wc_image_network_name_size');
delete_site_option('univoucher_wc_image_network_name_size');
delete_option('univoucher_wc_image_network_name_color');
delete_site_option('univoucher_wc_image_network_name_color');
delete_option('univoucher_wc_image_network_name_align');
delete_site_option('univoucher_wc_image_network_name_align');
delete_option('univoucher_wc_image_network_name_x');
delete_site_option('univoucher_wc_image_network_name_x');
delete_option('univoucher_wc_image_network_name_y');
delete_site_option('univoucher_wc_image_network_name_y');
delete_option('univoucher_wc_image_logo_height');
delete_site_option('univoucher_wc_image_logo_height');
delete_option('univoucher_wc_image_logo_x');
delete_site_option('univoucher_wc_image_logo_x');
delete_option('univoucher_wc_image_logo_y');
delete_site_option('univoucher_wc_image_logo_y');
delete_option('univoucher_wc_image_token_height');
delete_site_option('univoucher_wc_image_token_height');
delete_option('univoucher_wc_image_token_x');
delete_site_option('univoucher_wc_image_token_x');
delete_option('univoucher_wc_image_token_y');
delete_site_option('univoucher_wc_image_token_y');
delete_option('univoucher_wc_db_version');
delete_site_option('univoucher_wc_db_version');
delete_option('univoucher_wc_version');
delete_site_option('univoucher_wc_version');

// Delete Transients
delete_transient('univoucher_scan_total_orders');
delete_site_transient('univoucher_scan_total_orders');
delete_transient('univoucher_last_expiration_check');
delete_site_transient('univoucher_last_expiration_check');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_univoucher_callback_auth_%', '_site_transient_univoucher_callback_auth_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_needs_processing', '_site_transient_%_needs_processing' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_univoucher_promo_callback_auth_%', '_site_transient_univoucher_promo_callback_auth_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_univoucher_cancel_callback_auth_%', '_site_transient_univoucher_cancel_callback_auth_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_univoucher_promo_callback_context_%', '_site_transient_univoucher_promo_callback_context_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_univoucher_cancel_callback_context_%', '_site_transient_univoucher_cancel_callback_context_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_univoucher_token_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_univoucher_token_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_univoucher_token_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_univoucher_token_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_univoucher_network' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_univoucher_network' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_univoucher_network' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_univoucher_network' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_univoucher_card_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_univoucher_card_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_univoucher_card_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_univoucher_card_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_univoucher_token_decimals' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_univoucher_token_decimals' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_univoucher_token_decimals' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_univoucher_token_decimals' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_univoucher_token_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_univoucher_token_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_univoucher_token_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_univoucher_token_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_manage_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_manage_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_manage_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_manage_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'univoucher_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'univoucher_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'univoucher_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'univoucher_dismissed_notices' ) );

