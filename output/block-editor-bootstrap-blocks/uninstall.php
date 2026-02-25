<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('BootstrapBlocks_settings');
delete_site_option('BootstrapBlocks_settings');
delete_option('BootstrapBlocks_experiments');
delete_site_option('BootstrapBlocks_experiments');
delete_option('Bootstrap_config_options');
delete_site_option('Bootstrap_config_options');
delete_option('Bootstrap_config_breakpoints');
delete_site_option('Bootstrap_config_breakpoints');
delete_option('Bootstrap_config_container');
delete_site_option('Bootstrap_config_container');
delete_option('Bootstrap_config_gutter');
delete_site_option('Bootstrap_config_gutter');
delete_option('Bootstrap_config_scss_overrides');
delete_site_option('Bootstrap_config_scss_overrides');
delete_option('Bootstrap_config_imports');
delete_site_option('Bootstrap_config_imports');
delete_option('BootstrapBlocksActivated');
delete_site_option('BootstrapBlocksActivated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bootstrap_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bootstrap_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bootstrap_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bootstrap_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

