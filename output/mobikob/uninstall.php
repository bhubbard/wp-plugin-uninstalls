<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sahra_user');
delete_site_option('sahra_user');
delete_option('sahra_pass');
delete_site_option('sahra_pass');
delete_option('sahra_domain');
delete_site_option('sahra_domain');
delete_option('sahra_input_smstitle');
delete_site_option('sahra_input_smstitle');
delete_option('sahra_newuser_to_admin_control');
delete_site_option('sahra_newuser_to_admin_control');
delete_option('sahra_newuser_to_admin_no');
delete_site_option('sahra_newuser_to_admin_no');
delete_option('sahra_newuser_to_admin_text');
delete_site_option('sahra_newuser_to_admin_text');
delete_option('sahra_newuser_to_customer_control');
delete_site_option('sahra_newuser_to_customer_control');
delete_option('sahra_newuser_to_customer_text');
delete_site_option('sahra_newuser_to_customer_text');
delete_option('sahra_neworder_to_admin_control');
delete_site_option('sahra_neworder_to_admin_control');
delete_option('sahra_neworder_to_admin_no');
delete_site_option('sahra_neworder_to_admin_no');
delete_option('sahra_neworder_to_admin_text');
delete_site_option('sahra_neworder_to_admin_text');
delete_option('sahra_neworder_to_customer_control');
delete_site_option('sahra_neworder_to_customer_control');
delete_option('sahra_neworder_to_customer_text');
delete_site_option('sahra_neworder_to_customer_text');
delete_option('sahra_newnote1_to_customer_control');
delete_site_option('sahra_newnote1_to_customer_control');
delete_option('sahra_newnote1_to_customer_text');
delete_site_option('sahra_newnote1_to_customer_text');
delete_option('sahra_newnote2_to_customer_control');
delete_site_option('sahra_newnote2_to_customer_control');
delete_option('sahra_newnote2_to_customer_text');
delete_site_option('sahra_newnote2_to_customer_text');
delete_option('sahra_order_refund_to_admin_control');
delete_site_option('sahra_order_refund_to_admin_control');
delete_option('sahra_order_refund_to_admin_no');
delete_site_option('sahra_order_refund_to_admin_no');
delete_option('sahra_order_refund_to_admin_text');
delete_site_option('sahra_order_refund_to_admin_text');
delete_option('sahra_product_waitlist1_control');
delete_site_option('sahra_product_waitlist1_control');
delete_option('sahra_product_waitlist1_text');
delete_site_option('sahra_product_waitlist1_text');
delete_option('sahra_rehber_control');
delete_site_option('sahra_rehber_control');
delete_option('sahra_rehber_groupname');
delete_site_option('sahra_rehber_groupname');
delete_option('sahra_orderstatus_change_customer_control');
delete_site_option('sahra_orderstatus_change_customer_control');
delete_option('sahra_status');
delete_site_option('sahra_status');
delete_option('sahra_trChar');
delete_site_option('sahra_trChar');
delete_option('sahra_order_status_query_control');
delete_site_option('sahra_order_status_query_control');
delete_option('sahra_order_status_query_prefix');
delete_site_option('sahra_order_status_query_prefix');
delete_option('sahra_order_status_query_text');
delete_site_option('sahra_order_status_query_text');
delete_option('sahra_order_status_query_error_text');
delete_site_option('sahra_order_status_query_error_text');
delete_option('sahra_order_status_query_token');
delete_site_option('sahra_order_status_query_token');
delete_option('sahra_order_status_query_link');
delete_site_option('sahra_order_status_query_link');
delete_option('sahra_newuser_to_admin_json');
delete_site_option('sahra_newuser_to_admin_json');
delete_option('sahra_newuser_to_customer_json');
delete_site_option('sahra_newuser_to_customer_json');
delete_option('sahra_newnote1_to_customer_json');
delete_site_option('sahra_newnote1_to_customer_json');
delete_option('sahra_newnote2_to_customer_json');
delete_site_option('sahra_newnote2_to_customer_json');
delete_option('sahra_neworder_to_admin_json');
delete_site_option('sahra_neworder_to_admin_json');
delete_option('sahra_neworder_to_customer_json');
delete_site_option('sahra_neworder_to_customer_json');
delete_option('sahra_order_refund_to_admin_json');
delete_site_option('sahra_order_refund_to_admin_json');
delete_option('sahra_product_waitlist1_json');
delete_site_option('sahra_product_waitlist1_json');
delete_option('sahra_tf2_auth_register_control');
delete_site_option('sahra_tf2_auth_register_control');
delete_option('sahra_tf2_auth_register_text');
delete_site_option('sahra_tf2_auth_register_text');
delete_option('sahra_tf2_auth_register_diff');
delete_site_option('sahra_tf2_auth_register_diff');
delete_option('sahra_tf2_auth_register_phone_control');
delete_site_option('sahra_tf2_auth_register_phone_control');
delete_option('sahra_tf2_auth_register_phone_warning_text');
delete_site_option('sahra_tf2_auth_register_phone_warning_text');
delete_option('sahra_contact_meta_key');
delete_site_option('sahra_contact_meta_key');
delete_option('sahra_auth_roles');
delete_site_option('sahra_auth_roles');
delete_option('sahra_auth_users');
delete_site_option('sahra_auth_users');
delete_option('sahra_auth_roles_control');
delete_site_option('sahra_auth_roles_control');
delete_option('sahra_auth_users_control');
delete_site_option('sahra_auth_users_control');
delete_option('sahra_phonenumber_zero1');
delete_site_option('sahra_phonenumber_zero1');
delete_option('sahra_licence_key_to_meta');
delete_site_option('sahra_licence_key_to_meta');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sahra_order_status_text_%' ) );
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
delete_option('sahra_cf7_success_customer_control');
delete_site_option('sahra_cf7_success_customer_control');
delete_option('sahra_cf7_success_admin_control');
delete_site_option('sahra_cf7_success_admin_control');
delete_option('sahra_cf7_contact_control');
delete_site_option('sahra_cf7_contact_control');
delete_option('sahra_cf7_to_admin_no');
delete_site_option('sahra_cf7_to_admin_no');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sahra_cf7_list_text_success_customer_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sahra_cf7_list_text_success_admin_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sahra_cf7_list_contact_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sahra_cf7_list_contact_firstname_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sahra_cf7_list_contact_lastname_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sahra_cf7_list_contact_other_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sahra_cf7_list_text_error_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sahra_time_zone');
delete_site_option('sahra_time_zone');

// Clear Metadata
global $wpdb;
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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_licence_keys' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_licence_keys' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_licence_keys' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_licence_keys' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_new_order_sahra' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_new_order_sahra' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_new_order_sahra' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_new_order_sahra' ) );

