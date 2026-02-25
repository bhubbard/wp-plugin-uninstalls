<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('sg_del_address_card_title');
delete_site_option('sg_del_address_card_title');
delete_option('sg_del_address_card_btn_text');
delete_site_option('sg_del_address_card_btn_text');
delete_option('sg_del_enable_address_picker');
delete_site_option('sg_del_enable_address_picker');
delete_option('sg_del_default_lat');
delete_site_option('sg_del_default_lat');
delete_option('sg_del_default_long');
delete_site_option('sg_del_default_long');
delete_option('sg_del_allow_user_location');
delete_site_option('sg_del_allow_user_location');
delete_option('sg_del_add_enable_unnamed_error');
delete_site_option('sg_del_add_enable_unnamed_error');
delete_option('sg_del_add_unnamed_error');
delete_site_option('sg_del_add_unnamed_error');
delete_option('sg_del_add_title_error');
delete_site_option('sg_del_add_title_error');
delete_option('sg_del_address_cards_column');
delete_site_option('sg_del_address_cards_column');
delete_option('sg_del_address_custom_styles');
delete_site_option('sg_del_address_custom_styles');
delete_option('sg_del_add_new_address_card_btn_text');
delete_site_option('sg_del_add_new_address_card_btn_text');
delete_option('sg_del_add_new_address_form_title');
delete_site_option('sg_del_add_new_address_form_title');
delete_option('sg_del_add_new_address_form_btn_text');
delete_site_option('sg_del_add_new_address_form_btn_text');
delete_option('sg_del_address_type_placeholder');
delete_site_option('sg_del_address_type_placeholder');
delete_option('sg_del_add_title');
delete_site_option('sg_del_add_title');
delete_option('sg_del_show_address_type');
delete_site_option('sg_del_show_address_type');

// Clear Cron Jobs
wp_clear_scheduled_hook('isa_add_every_three_minutes');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'delivery_latitude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'delivery_latitude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'delivery_latitude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'delivery_latitude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'delivery_longitude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'delivery_longitude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'delivery_longitude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'delivery_longitude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'delivery_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'delivery_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'delivery_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'delivery_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'estimation_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'estimation_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'estimation_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'estimation_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'package_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'package_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'package_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'package_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moovin_qr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moovin_qr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moovin_qr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moovin_qr' ) );

