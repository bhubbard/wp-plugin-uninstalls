<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Activated_EcomSurance');
delete_site_option('Activated_EcomSurance');
delete_option('insurify_app_status');
delete_site_option('insurify_app_status');
delete_option('insurify_protection_toggle_default');
delete_site_option('insurify_protection_toggle_default');
delete_option('insurify_protection_toggle_cartorcheckout');
delete_site_option('insurify_protection_toggle_cartorcheckout');
delete_option('insurify_toggle_type');
delete_site_option('insurify_toggle_type');
delete_option('insurify_protection_title');
delete_site_option('insurify_protection_title');
delete_option('insurify_protection_subtitle');
delete_site_option('insurify_protection_subtitle');
delete_option('insurify_protection_description');
delete_site_option('insurify_protection_description');
delete_option('insurify_toggle_inline_css');
delete_site_option('insurify_toggle_inline_css');
delete_option('insurify_storelogo');
delete_site_option('insurify_storelogo');
delete_option('insurify_coverimage');
delete_site_option('insurify_coverimage');
delete_option('insurify_in_progress_email_for_customer');
delete_site_option('insurify_in_progress_email_for_customer');
delete_option('insurify_reorder_email_for_customer');
delete_site_option('insurify_reorder_email_for_customer');
delete_option('insurify_refund_email_for_customer');
delete_site_option('insurify_refund_email_for_customer');
delete_option('insurify_other_email_for_admin');
delete_site_option('insurify_other_email_for_admin');
delete_option('insurify_claim_requested_email_for_customer');
delete_site_option('insurify_claim_requested_email_for_customer');
delete_option('title');
delete_site_option('title');
delete_option('leftimagetitle');
delete_site_option('leftimagetitle');
delete_option('centerimagetitle');
delete_site_option('centerimagetitle');
delete_option('rightimagetitle');
delete_site_option('rightimagetitle');
delete_option('term');
delete_site_option('term');
delete_option('copyright');
delete_site_option('copyright');
delete_option('ecomsurance_popup_logo');
delete_site_option('ecomsurance_popup_logo');
delete_option('popupbgimg');
delete_site_option('popupbgimg');
delete_option('leftimage');
delete_site_option('leftimage');
delete_option('centerimage');
delete_site_option('centerimage');
delete_option('rightimage');
delete_site_option('rightimage');
delete_option('insurify_claim_requested_email_for_admin');
delete_site_option('insurify_claim_requested_email_for_admin');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'auth_insurify_id_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'auth_insurify_id_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'auth_insurify_id_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'auth_insurify_id_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'claim-status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'claim-status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'claim-status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'claim-status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thankyou_action_done' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thankyou_action_done' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thankyou_action_done' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thankyou_action_done' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ec_insurance_plan' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ec_insurance_plan' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ec_insurance_plan' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ec_insurance_plan' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cart_minimum_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cart_minimum_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cart_minimum_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cart_minimum_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cart_maximum_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cart_maximum_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cart_maximum_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cart_maximum_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'surcharge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'surcharge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'surcharge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'surcharge' ) );

