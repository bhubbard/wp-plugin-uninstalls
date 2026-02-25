<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpc_kratos_skin_license_status');
delete_site_option('wpc_kratos_skin_license_status');
delete_option('wpc_kratos_skin_license_key');
delete_site_option('wpc_kratos_skin_license_key');
delete_option('wpc_kratos_group_icon_width');
delete_site_option('wpc_kratos_group_icon_width');
delete_option('wpc_kratos_sub_group_icon_width');
delete_site_option('wpc_kratos_sub_group_icon_width');
delete_option('wpc_kratos_icon_width');
delete_site_option('wpc_kratos_icon_width');
delete_option('wpc_kratos_group_icon_height');
delete_site_option('wpc_kratos_group_icon_height');
delete_option('wpc_kratos_sub_group_icon_height');
delete_site_option('wpc_kratos_sub_group_icon_height');
delete_option('wpc_kratos_icon_height');
delete_site_option('wpc_kratos_icon_height');
delete_option('wpc_kratos_control_header_title');
delete_site_option('wpc_kratos_control_header_title');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpc_config_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpc_config_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpc_config_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpc_config_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpc_config_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpc_config_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpc_config_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpc_config_style' ) );

