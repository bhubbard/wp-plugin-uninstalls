<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wppopups_license_updates');
delete_site_option('wppopups_license_updates');
delete_option('wppopups_license');
delete_site_option('wppopups_license');
delete_option('wppopups_review');
delete_site_option('wppopups_review');
delete_option('wppopups_activated');
delete_site_option('wppopups_activated');
delete_option('wppopups_settings');
delete_site_option('wppopups_settings');
delete_option('wppopups_upgraded_from_1x');
delete_site_option('wppopups_upgraded_from_1x');
delete_option('spu_integrations');
delete_site_option('spu_integrations');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wppopups_upgrade_fields');
delete_site_option('wppopups_upgrade_fields');
delete_option('wppopups_activation_redirect');
delete_site_option('wppopups_activation_redirect');
delete_option('wppopups_version_upgraded_from');
delete_site_option('wppopups_version_upgraded_from');
delete_option('wppopups_providers');
delete_site_option('wppopups_providers');
delete_option('wppopups_version');
delete_site_option('wppopups_version');
delete_option('wppopups_preview_page');
delete_site_option('wppopups_preview_page');
delete_option('wppopups_debug');
delete_site_option('wppopups_debug');
delete_option('wppopups_logging');
delete_site_option('wppopups_logging');

// Delete Transients
delete_transient('_wppopups_addons');
delete_site_transient('_wppopups_addons');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('wppopups_activation_redirect');
delete_site_transient('wppopups_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_wppopups_log_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_wppopups_log_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_wppopups_log_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_wppopups_log_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'spu_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'spu_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'spu_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'spu_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'spu_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'spu_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'spu_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'spu_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'spu_ab_group' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'spu_ab_group' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'spu_ab_group' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'spu_ab_group' ) );

