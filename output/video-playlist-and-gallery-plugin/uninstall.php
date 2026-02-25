<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recently_activated');
delete_site_option('recently_activated');
delete_option('cincopa_cp_mt_api_token');
delete_site_option('cincopa_cp_mt_api_token');
delete_option('CincopaRss');
delete_site_option('CincopaRss');
delete_option('CincopaAsync');
delete_site_option('CincopaAsync');
delete_option('CincopaExcerpt');
delete_site_option('CincopaExcerpt');
delete_option('cincopa_welcome_notice');
delete_site_option('cincopa_welcome_notice');
delete_option('CincopaOpenGraph');
delete_site_option('CincopaOpenGraph');
delete_option('CincopaTemplates');
delete_site_option('CincopaTemplates');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('cincopaexcerpt');
delete_site_option('cincopaexcerpt');
delete_option('cincopa_installed');
delete_site_option('cincopa_installed');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cincopa_cp_mt_api_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cincopa_cp_mt_api_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cincopa_cp_mt_api_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cincopa_cp_mt_api_token' ) );

