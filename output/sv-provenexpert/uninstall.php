<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sv_proven_expert');
delete_site_option('sv_proven_expert');
delete_option('widget_sv_provenexpert_widget');
delete_site_option('widget_sv_provenexpert_widget');
delete_option('widget_block');
delete_site_option('widget_block');
delete_option('sv_provenexpert_modules_settings_api_id');
delete_site_option('sv_provenexpert_modules_settings_api_id');
delete_option('sv_provenexpert_modules_settings_api_key');
delete_site_option('sv_provenexpert_modules_settings_api_key');
delete_option('sv_provenexpert_version');
delete_site_option('sv_provenexpert_version');
delete_option('widget_sv_provenexpert_modules_widget');
delete_site_option('widget_sv_provenexpert_modules_widget');
delete_option('sv_provenexpert_modules_common_settings_settings_api_id');
delete_site_option('sv_provenexpert_modules_common_settings_settings_api_id');
delete_option('sv_provenexpert_modules_common_settings_settings_api_key');
delete_site_option('sv_provenexpert_modules_common_settings_settings_api_key');

// Delete Transients
delete_transient('sv_provenexpert');
delete_site_transient('sv_provenexpert');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sv_core_expert_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sv_core_expert_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sv_core_expert_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sv_core_expert_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );

