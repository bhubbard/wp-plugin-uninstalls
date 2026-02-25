<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('edd_ifso_geo_license_key');
delete_site_option('edd_ifso_geo_license_key');
delete_option('edd_ifso_geo_license_status');
delete_site_option('edd_ifso_geo_license_status');
delete_option('edd_ifso_geo_license_expires');
delete_site_option('edd_ifso_geo_license_expires');
delete_option('edd_ifso_license_key');
delete_site_option('edd_ifso_license_key');
delete_option('edd_ifso_license_status');
delete_site_option('edd_ifso_license_status');
delete_option('edd_ifso_license_expires');
delete_site_option('edd_ifso_license_expires');
delete_option('edd_ifso_license_item_id');
delete_site_option('edd_ifso_license_item_id');
delete_option('ifso_db_version');
delete_site_option('ifso_db_version');
delete_option('ifso_wp_version');
delete_site_option('ifso_wp_version');
delete_option('edd_ifso_geo_license_item_id');
delete_site_option('edd_ifso_geo_license_item_id');
delete_option('edd_ifso_user_deactivated_license');
delete_site_option('edd_ifso_user_deactivated_license');
delete_option('edd_ifso_geo_license_item_name');
delete_site_option('edd_ifso_geo_license_item_name');
delete_option('edd_ifso_had_geo_license');
delete_site_option('edd_ifso_had_geo_license');
delete_option('edd_ifso_user_deactivated_geo_license');
delete_site_option('edd_ifso_user_deactivated_geo_license');
delete_option('edd_ifso_license_item_name');
delete_site_option('edd_ifso_license_item_name');
delete_option('edd_ifso_had_license');
delete_site_option('edd_ifso_had_license');
delete_option('ifso_groups_data');
delete_site_option('ifso_groups_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ifso_trigger_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ifso_trigger_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ifso_trigger_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ifso_trigger_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ifso_trigger_default_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ifso_trigger_default_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ifso_trigger_default_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ifso_trigger_default_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ifso_trigger_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ifso_trigger_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ifso_trigger_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ifso_trigger_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ifso_trigger_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ifso_trigger_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ifso_trigger_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ifso_trigger_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpb_shortcodes_custom_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpb_shortcodes_custom_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpb_shortcodes_custom_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpb_shortcodes_custom_css' ) );

