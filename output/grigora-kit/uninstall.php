<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grigora_kit_settings');
delete_site_option('grigora_kit_settings');
delete_option('site_logo');
delete_site_option('site_logo');
delete_option('grigora_blocks_typography');
delete_site_option('grigora_blocks_typography');
delete_option('grigora_st_logo_id');
delete_site_option('grigora_st_logo_id');
delete_option('grigora_st_templates_meta');
delete_site_option('grigora_st_templates_meta');
delete_option('downloaded_font_files');
delete_site_option('downloaded_font_files');

// Delete Transients
delete_transient('grigora_st_templates_meta_updated_flag');
delete_site_transient('grigora_st_templates_meta_updated_flag');

// Clear Cron Jobs
wp_clear_scheduled_hook('delete_fonts_folder');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_grigora-toc-disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_grigora-toc-disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_grigora-toc-disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_grigora-toc-disable' ) );

