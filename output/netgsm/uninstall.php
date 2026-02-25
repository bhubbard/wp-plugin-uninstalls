<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('netgsm_iys_control');
delete_site_option('netgsm_iys_control');
delete_option('netgsm_brandcode_control');
delete_site_option('netgsm_brandcode_control');
delete_option('netgsm_recipient_type');
delete_site_option('netgsm_recipient_type');
delete_option('netgsm_brandcode_text');
delete_site_option('netgsm_brandcode_text');
delete_option('netgsm_user');
delete_site_option('netgsm_user');
delete_option('netgsm_pass');
delete_site_option('netgsm_pass');
delete_option('netgsm_input_smstitle');
delete_site_option('netgsm_input_smstitle');
delete_option('netgsm_newuser_to_admin_control');
delete_site_option('netgsm_newuser_to_admin_control');
delete_option('netgsm_newuser_to_admin_no');
delete_site_option('netgsm_newuser_to_admin_no');
delete_option('netgsm_newuser_to_admin_text');
delete_site_option('netgsm_newuser_to_admin_text');
delete_option('netgsm_newuser_to_customer_control');
delete_site_option('netgsm_newuser_to_customer_control');
delete_option('netgsm_newuser_to_customer_text');
delete_site_option('netgsm_newuser_to_customer_text');
delete_option('netgsm_neworder_to_admin_control');
delete_site_option('netgsm_neworder_to_admin_control');
delete_option('netgsm_neworder_to_admin_no');
delete_site_option('netgsm_neworder_to_admin_no');
delete_option('netgsm_neworder_to_admin_text');
delete_site_option('netgsm_neworder_to_admin_text');
delete_option('netgsm_neworder_to_customer_control');
delete_site_option('netgsm_neworder_to_customer_control');
delete_option('netgsm_neworder_to_customer_text');
delete_site_option('netgsm_neworder_to_customer_text');
delete_option('netgsm_newnote1_to_customer_control');
delete_site_option('netgsm_newnote1_to_customer_control');
delete_option('netgsm_newnote1_to_customer_text');
delete_site_option('netgsm_newnote1_to_customer_text');
delete_option('netgsm_newnote2_to_customer_control');
delete_site_option('netgsm_newnote2_to_customer_control');
delete_option('netgsm_newnote2_to_customer_text');
delete_site_option('netgsm_newnote2_to_customer_text');
delete_option('netgsm_order_refund_to_admin_control');
delete_site_option('netgsm_order_refund_to_admin_control');
delete_option('netgsm_order_refund_to_admin_no');
delete_site_option('netgsm_order_refund_to_admin_no');
delete_option('netgsm_order_refund_to_admin_text');
delete_site_option('netgsm_order_refund_to_admin_text');
delete_option('netgsm_abandoned_card_sms_admin_control');
delete_site_option('netgsm_abandoned_card_sms_admin_control');
delete_option('netgsm_abandoned_cart_periyod');
delete_site_option('netgsm_abandoned_cart_periyod');
delete_option('netgsm_abandoned_cart_smslimit');
delete_site_option('netgsm_abandoned_cart_smslimit');
delete_option('netgsm_abandoned_cart_to_admin_text');
delete_site_option('netgsm_abandoned_cart_to_admin_text');
delete_option('netgsm_abandoned_cart_to_admin_json');
delete_site_option('netgsm_abandoned_cart_to_admin_json');
delete_option('netgsm_product_waitlist1_control');
delete_site_option('netgsm_product_waitlist1_control');
delete_option('netgsm_product_waitlist1_text');
delete_site_option('netgsm_product_waitlist1_text');
delete_option('netgsm_orderstatus_change_customer_control');
delete_site_option('netgsm_orderstatus_change_customer_control');
delete_option('netgsm_status');
delete_site_option('netgsm_status');
delete_option('netgsm_trChar');
delete_site_option('netgsm_trChar');
delete_option('netgsm_order_status_query_control');
delete_site_option('netgsm_order_status_query_control');
delete_option('netgsm_order_status_query_prefix');
delete_site_option('netgsm_order_status_query_prefix');
delete_option('netgsm_order_status_query_text');
delete_site_option('netgsm_order_status_query_text');
delete_option('netgsm_order_status_query_error_text');
delete_site_option('netgsm_order_status_query_error_text');
delete_option('netgsm_order_status_query_token');
delete_site_option('netgsm_order_status_query_token');
delete_option('netgsm_order_status_query_link');
delete_site_option('netgsm_order_status_query_link');
delete_option('netgsm_newuser_to_admin_json');
delete_site_option('netgsm_newuser_to_admin_json');
delete_option('netgsm_newuser_to_customer_json');
delete_site_option('netgsm_newuser_to_customer_json');
delete_option('netgsm_newnote1_to_customer_json');
delete_site_option('netgsm_newnote1_to_customer_json');
delete_option('netgsm_newnote2_to_customer_json');
delete_site_option('netgsm_newnote2_to_customer_json');
delete_option('netgsm_neworder_to_admin_json');
delete_site_option('netgsm_neworder_to_admin_json');
delete_option('netgsm_neworder_to_customer_json');
delete_site_option('netgsm_neworder_to_customer_json');
delete_option('netgsm_order_refund_to_admin_json');
delete_site_option('netgsm_order_refund_to_admin_json');
delete_option('netgsm_product_waitlist1_json');
delete_site_option('netgsm_product_waitlist1_json');
delete_option('netgsm_tf2_auth_register_control');
delete_site_option('netgsm_tf2_auth_register_control');
delete_option('netgsm_tf2_auth_register_text');
delete_site_option('netgsm_tf2_auth_register_text');
delete_option('netgsm_tf2_auth_register_diff');
delete_site_option('netgsm_tf2_auth_register_diff');
delete_option('netgsm_tf2_cash_on_delivery_control');
delete_site_option('netgsm_tf2_cash_on_delivery_control');
delete_option('netgsm_tf2_cash_on_delivery_text');
delete_site_option('netgsm_tf2_cash_on_delivery_text');
delete_option('netgsm_tf2_cash_on_delivery_diff');
delete_site_option('netgsm_tf2_cash_on_delivery_diff');
delete_option('netgsm_tf2_auth_register_phone_control');
delete_site_option('netgsm_tf2_auth_register_phone_control');
delete_option('netgsm_tf2_auth_register_phone_warning_text');
delete_site_option('netgsm_tf2_auth_register_phone_warning_text');
delete_option('netgsm_contact_meta_key');
delete_site_option('netgsm_contact_meta_key');
delete_option('netgsm_auth_roles');
delete_site_option('netgsm_auth_roles');
delete_option('netgsm_auth_users');
delete_site_option('netgsm_auth_users');
delete_option('netgsm_auth_roles_control');
delete_site_option('netgsm_auth_roles_control');
delete_option('netgsm_auth_users_control');
delete_site_option('netgsm_auth_users_control');
delete_option('netgsm_phonenumber_zero1');
delete_site_option('netgsm_phonenumber_zero1');
delete_option('netgsm_licence_key_to_meta');
delete_site_option('netgsm_licence_key_to_meta');
delete_option('netgsm_iys_check_text');
delete_site_option('netgsm_iys_check_text');
delete_option('netgsm_iys_check_control');
delete_site_option('netgsm_iys_check_control');
delete_option('netgsm_message');
delete_site_option('netgsm_message');
delete_option('netgsm_call');
delete_site_option('netgsm_call');
delete_option('netgsm_email');
delete_site_option('netgsm_email');
delete_option('netgsm_iys_meta_key');
delete_site_option('netgsm_iys_meta_key');
delete_option('netgsm_asistan');
delete_site_option('netgsm_asistan');
delete_option('netgsm_asistan_message');
delete_site_option('netgsm_asistan_message');
delete_option('netgsm_asistan_messagenumber');
delete_site_option('netgsm_asistan_messagenumber');
delete_option('netgsm_asistan_call');
delete_site_option('netgsm_asistan_call');
delete_option('netgsm_asistan_callnumber');
delete_site_option('netgsm_asistan_callnumber');
delete_option('netgsm_asistan_email');
delete_site_option('netgsm_asistan_email');
delete_option('netgsm_asistan_emailaddress');
delete_site_option('netgsm_asistan_emailaddress');
delete_option('netgsm_asistan_whatsapp');
delete_site_option('netgsm_asistan_whatsapp');
delete_option('netgsm_asistan_whatsappnumber');
delete_site_option('netgsm_asistan_whatsappnumber');
delete_option('netgsm_asistan_netasistan');
delete_site_option('netgsm_asistan_netasistan');
delete_option('netgsm_netasistan_appkey');
delete_site_option('netgsm_netasistan_appkey');
delete_option('netgsm_netasistan_userkey');
delete_site_option('netgsm_netasistan_userkey');
delete_option('netgsm_netasistan_etiket');
delete_site_option('netgsm_netasistan_etiket');
delete_option('netgsm_netasistan_token');
delete_site_option('netgsm_netasistan_token');
delete_option('netgsm_netasistan_tokendate');
delete_site_option('netgsm_netasistan_tokendate');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'netgsm_order_status_text_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_json' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('netgsm_cf7_success_customer_control');
delete_site_option('netgsm_cf7_success_customer_control');
delete_option('netgsm_cf7_success_admin_control');
delete_site_option('netgsm_cf7_success_admin_control');
delete_option('netgsm_cf7_contact_control');
delete_site_option('netgsm_cf7_contact_control');
delete_option('netgsm_cf7_to_admin_no');
delete_site_option('netgsm_cf7_to_admin_no');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'netgsm_cf7_list_text_success_customer_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'netgsm_cf7_list_text_success_admin_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'netgsm_cf7_list_contact_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'netgsm_cf7_list_contact_firstname_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'netgsm_cf7_list_contact_lastname_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'netgsm_cf7_list_contact_other_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'netgsm_cf7_list_text_error_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('netgsm_rehber_control');
delete_site_option('netgsm_rehber_control');

// Clear Cron Jobs
wp_clear_scheduled_hook('send_abandoned_cart_sms');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_2fa' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_2fa' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_2fa' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_2fa' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_2fa_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_2fa_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_2fa_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_2fa_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_2fa_ref' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_2fa_ref' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_2fa_ref' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_2fa_ref' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'netgsm_kvkk_check' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'netgsm_kvkk_check' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'netgsm_kvkk_check' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'netgsm_kvkk_check' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_licence_keys' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_licence_keys' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_licence_keys' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_licence_keys' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_new_order_netgsm' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_new_order_netgsm' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_new_order_netgsm' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_new_order_netgsm' ) );

