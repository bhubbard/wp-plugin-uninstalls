<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ffl_api_key_option');
delete_site_option('ffl_api_key_option');
delete_option('ffl_checkout_message');
delete_site_option('ffl_checkout_message');
delete_option('ffl_init_map_location');
delete_site_option('ffl_init_map_location');
delete_option('ffl_include_map');
delete_site_option('ffl_include_map');
delete_option('ffl_candr_override');
delete_site_option('ffl_candr_override');
delete_option('ffl_local_pickup');
delete_site_option('ffl_local_pickup');
delete_option('ffl_mixed_cart_support');
delete_site_option('ffl_mixed_cart_support');
delete_option('ffl_ammo_compliance_states');
delete_site_option('ffl_ammo_compliance_states');
delete_option('ffl_compliance_states');
delete_site_option('ffl_compliance_states');
delete_option('ffl_ammo_checkout_message');
delete_site_option('ffl_ammo_checkout_message');
delete_option('ffl_non_firearms_checkout_message');
delete_site_option('ffl_non_firearms_checkout_message');
delete_option('ffl_mixed_cart_notice_text');
delete_site_option('ffl_mixed_cart_notice_text');
delete_option('ffl_first_last_name_notice_text');
delete_site_option('ffl_first_last_name_notice_text');
delete_option('ffl_restricted_states');
delete_site_option('ffl_restricted_states');
delete_option('ffl_restricted_states_message');
delete_site_option('ffl_restricted_states_message');
delete_option('ffl_restricted_states_firearms_message');
delete_site_option('ffl_restricted_states_firearms_message');
delete_option('ffl_restricted_states_ammo_message');
delete_site_option('ffl_restricted_states_ammo_message');
delete_option('ffl_restricted_states_firearms_ammo_message');
delete_site_option('ffl_restricted_states_firearms_ammo_message');
delete_option('ffl_restricted_states_all_message');
delete_site_option('ffl_restricted_states_all_message');
delete_option('ffl_mixed_cart_notice_bg_color');
delete_site_option('ffl_mixed_cart_notice_bg_color');
delete_option('ffl_mixed_cart_notice_text_color');
delete_site_option('ffl_mixed_cart_notice_text_color');
delete_option('ffl_first_last_name_notice_bg_color');
delete_site_option('ffl_first_last_name_notice_bg_color');
delete_option('ffl_first_last_name_notice_text_color');
delete_site_option('ffl_first_last_name_notice_text_color');
delete_option('ffl_checkout_message_bg_color');
delete_site_option('ffl_checkout_message_bg_color');
delete_option('ffl_checkout_message_text_color');
delete_site_option('ffl_checkout_message_text_color');
delete_option('ffl_ammo_checkout_message_bg_color');
delete_site_option('ffl_ammo_checkout_message_bg_color');
delete_option('ffl_ammo_checkout_message_text_color');
delete_site_option('ffl_ammo_checkout_message_text_color');
delete_option('ffl_block_po_boxes');
delete_site_option('ffl_block_po_boxes');
delete_option('ffl_po_box_error_message');
delete_site_option('ffl_po_box_error_message');
delete_option('ffl_require_address_match');
delete_site_option('ffl_require_address_match');
delete_option('ffl_address_mismatch_error_message');
delete_site_option('ffl_address_mismatch_error_message');
delete_option('ffl_require_ffl_name_match');
delete_site_option('ffl_require_ffl_name_match');
delete_option('ffl_name_mismatch_error_message');
delete_site_option('ffl_name_mismatch_error_message');
delete_option('ffl_document_upload_enabled');
delete_site_option('ffl_document_upload_enabled');
delete_option('ffl_state_license_required_states');
delete_site_option('ffl_state_license_required_states');
delete_option('ffl_state_license_firearms_states');
delete_site_option('ffl_state_license_firearms_states');
delete_option('ffl_state_license_ammo_states');
delete_site_option('ffl_state_license_ammo_states');
delete_option('ffl_state_license_both_states');
delete_site_option('ffl_state_license_both_states');
delete_option('ffl_license_required_states');
delete_site_option('ffl_license_required_states');
delete_option('ffl_drivers_license_required_states');
delete_site_option('ffl_drivers_license_required_states');
delete_option('ffl_document_cleanup_enabled');
delete_site_option('ffl_document_cleanup_enabled');
delete_option('ffl_document_cleanup_age_days');
delete_site_option('ffl_document_cleanup_age_days');
delete_option('ffl_blacklist');
delete_site_option('ffl_blacklist');
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
delete_option('ffl_local_pickup_conflict_message');
delete_site_option('ffl_local_pickup_conflict_message');
delete_option('ffl_document_last_cleanup');
delete_site_option('ffl_document_last_cleanup');
delete_option('ffl_document_last_cleanup_count');
delete_site_option('ffl_document_last_cleanup_count');
delete_option('ffl_document_last_cleanup_size');
delete_site_option('ffl_document_last_cleanup_size');

// Clear Cron Jobs
wp_clear_scheduled_hook('ffl_document_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ammunition_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ammunition_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ammunition_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ammunition_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_firearm_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_firearm_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_firearm_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_firearm_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ffl_admin_uploaded_documents' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ffl_admin_uploaded_documents' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ffl_admin_uploaded_documents' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ffl_admin_uploaded_documents' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ffl_uploaded_documents' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ffl_uploaded_documents' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ffl_uploaded_documents' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ffl_uploaded_documents' ) );

