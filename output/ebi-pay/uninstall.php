<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_ebi_link_blocks_settings');
delete_site_option('woocommerce_ebi_link_blocks_settings');
delete_option('vc_json_ebilink');
delete_site_option('vc_json_ebilink');
delete_option('config_installments_json_ebilink');
delete_site_option('config_installments_json_ebilink');
delete_option('site_key_ebilink');
delete_site_option('site_key_ebilink');
delete_option('mid_ebilink');
delete_site_option('mid_ebilink');
delete_option('environment_dev_cyb_ebilink');
delete_site_option('environment_dev_cyb_ebilink');
delete_option('jwt_ebilink');
delete_site_option('jwt_ebilink');
delete_option('secret_key_ebilink');
delete_site_option('secret_key_ebilink');
delete_option('user_ebilink');
delete_site_option('user_ebilink');
delete_option('password_ebilink');
delete_site_option('password_ebilink');
delete_option('token_ebilink');
delete_site_option('token_ebilink');
delete_option('name_enterprise_ebilink');
delete_site_option('name_enterprise_ebilink');
delete_option('currency_ebilink');
delete_site_option('currency_ebilink');
delete_option('activation_date_ebilink');
delete_site_option('activation_date_ebilink');
delete_option('creation_date_ebilink');
delete_site_option('creation_date_ebilink');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_cvc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_cvc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_cvc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_cvc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_vcq' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_vcq' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_vcq' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ebi_pay_blocks_card_vcq' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ebi_pay_blocks_autoincrement_to_use' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ebi_pay_blocks_autoincrement_to_use' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ebi_pay_blocks_autoincrement_to_use' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ebi_pay_blocks_autoincrement_to_use' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'etn_ticket_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'etn_ticket_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'etn_ticket_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'etn_ticket_price' ) );

