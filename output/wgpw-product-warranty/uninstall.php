<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wgpw_general_tab_enabled');
delete_site_option('wgpw_general_tab_enabled');
delete_option('wgpw_badge_type');
delete_site_option('wgpw_badge_type');
delete_option('wgpw_badge_position');
delete_site_option('wgpw_badge_position');
delete_option('wgpw_warranty_badge_text');
delete_site_option('wgpw_warranty_badge_text');
delete_option('wgpw_guarantee_badge_text');
delete_site_option('wgpw_guarantee_badge_text');
delete_option('wgpw_tooltip_bg_color');
delete_site_option('wgpw_tooltip_bg_color');
delete_option('wgpw_tooltip_text_color');
delete_site_option('wgpw_tooltip_text_color');
delete_option('wgpw_tooltip_font_size');
delete_site_option('wgpw_tooltip_font_size');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wgpw_warranties' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wgpw_warranties' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wgpw_warranties' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wgpw_warranties' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wgpw_has_valid_warranty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wgpw_has_valid_warranty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wgpw_has_valid_warranty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wgpw_has_valid_warranty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wgpw_warranty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wgpw_warranty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wgpw_warranty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wgpw_warranty' ) );

