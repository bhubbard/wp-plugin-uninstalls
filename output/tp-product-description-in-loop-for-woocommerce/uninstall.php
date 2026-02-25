<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tppdil_disable_description_in_loop');
delete_site_option('tppdil_disable_description_in_loop');
delete_option('tppdil_disable_description_in_mobile');
delete_site_option('tppdil_disable_description_in_mobile');
delete_option('tppdil_description_priority');
delete_site_option('tppdil_description_priority');
delete_option('tppdil_description_position');
delete_site_option('tppdil_description_position');
delete_option('tppdil_limit_description');
delete_site_option('tppdil_limit_description');
delete_option('tppdil_limit_description_len');
delete_site_option('tppdil_limit_description_len');
delete_option('tppdil_exclude_description_from_categories');
delete_site_option('tppdil_exclude_description_from_categories');
delete_option('tppdil_exclude_description_from_tags');
delete_site_option('tppdil_exclude_description_from_tags');
delete_option('tppdil_exclude_description_from_related');
delete_site_option('tppdil_exclude_description_from_related');
delete_option('tppdil_exclude_description_from_up_sells');
delete_site_option('tppdil_exclude_description_from_up_sells');
delete_option('tppdil_exclude_description_from_shop');
delete_site_option('tppdil_exclude_description_from_shop');
delete_option('tppdil_show_product_description');
delete_site_option('tppdil_show_product_description');
delete_option('tppdil_show_product_short_description');
delete_site_option('tppdil_show_product_short_description');
delete_option('tppdil_description_background');
delete_site_option('tppdil_description_background');
delete_option('tppdil_description_color');
delete_site_option('tppdil_description_color');
delete_option('tppdil_description_font_size');
delete_site_option('tppdil_description_font_size');
delete_option('tppdil_description_text_align');
delete_site_option('tppdil_description_text_align');
delete_option('tppdil_description_font_weight');
delete_site_option('tppdil_description_font_weight');
delete_option('tppdil_tooltip_background');
delete_site_option('tppdil_tooltip_background');
delete_option('tppdil_tooltip_color');
delete_site_option('tppdil_tooltip_color');
delete_option('tppdil_tooltip_position');
delete_site_option('tppdil_tooltip_position');
delete_option('tppdil_custom_css');
delete_site_option('tppdil_custom_css');
delete_option('tppdil_description_margin');
delete_site_option('tppdil_description_margin');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tppdil_single_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tppdil_single_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tppdil_single_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tppdil_single_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tppdil_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tppdil_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tppdil_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tppdil_description' ) );

