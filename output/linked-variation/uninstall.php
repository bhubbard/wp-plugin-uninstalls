<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alv_settings_positions');
delete_site_option('alv_settings_positions');
delete_option('alv_settings_tooltip_pos');
delete_site_option('alv_settings_tooltip_pos');
delete_option('alv_settings_hide_emt_terms');
delete_site_option('alv_settings_hide_emt_terms');
delete_option('alv_settings_exl_hidden_product');
delete_site_option('alv_settings_exl_hidden_product');
delete_option('alv_settings_exl_unpurcha_product');
delete_site_option('alv_settings_exl_unpurcha_product');
delete_option('alv_settings_link_individual_product');
delete_site_option('alv_settings_link_individual_product');
delete_option('alv_settings_use_unfollow_links');
delete_site_option('alv_settings_use_unfollow_links');
delete_option('dsalv_db_version');
delete_site_option('dsalv_db_version');

// Delete Transients
delete_transient('_welcome_screen_activation_redirect_ds_advanced_linked_variations');
delete_site_transient('_welcome_screen_activation_redirect_ds_advanced_linked_variations');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dsalv_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dsalv_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dsalv_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dsalv_link' ) );

