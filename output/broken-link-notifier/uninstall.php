<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blnotifier_cache');
delete_site_option('blnotifier_cache');
delete_option('blnotifier_pause_frontend_scanning');
delete_site_option('blnotifier_pause_frontend_scanning');
delete_option('blnotifier_pause_results_verification');
delete_site_option('blnotifier_pause_results_verification');
delete_option('blnotifier_status_codes');
delete_site_option('blnotifier_status_codes');
delete_option('blnotifier_has_updated_settings');
delete_site_option('blnotifier_has_updated_settings');
delete_option('blnotifier_enable_warnings');
delete_site_option('blnotifier_enable_warnings');
delete_option('blnotifier_post_types');
delete_site_option('blnotifier_post_types');
delete_option('blnotifier_include_images');
delete_site_option('blnotifier_include_images');
delete_option('blnotifier_documents_use_head');
delete_site_option('blnotifier_documents_use_head');
delete_option('blnotifier_user_agent');
delete_site_option('blnotifier_user_agent');
delete_option('blnotifier_timeout');
delete_site_option('blnotifier_timeout');
delete_option('blnotifier_allow_redirects');
delete_site_option('blnotifier_allow_redirects');
delete_option('blnotifier_max_redirects');
delete_site_option('blnotifier_max_redirects');
delete_option('blnotifier_ssl_verify');
delete_site_option('blnotifier_ssl_verify');
delete_option('eri_files_folder');
delete_site_option('eri_files_folder');
delete_option('blnotifier_editable_roles');
delete_site_option('blnotifier_editable_roles');
delete_option('blnotifier_mark_code_zero_broken');
delete_site_option('blnotifier_mark_code_zero_broken');
delete_option('blnotifier_enable_delete_source');
delete_site_option('blnotifier_enable_delete_source');
delete_option('blnotifier_enable_emailing');
delete_site_option('blnotifier_enable_emailing');
delete_option('blnotifier_emails');
delete_site_option('blnotifier_emails');
delete_option('blnotifier_enable_discord');
delete_site_option('blnotifier_enable_discord');
delete_option('blnotifier_discord');
delete_site_option('blnotifier_discord');
delete_option('blnotifier_enable_msteams');
delete_site_option('blnotifier_enable_msteams');
delete_option('blnotifier_msteams');
delete_site_option('blnotifier_msteams');
delete_option('blnotifier_enable_good_links');
delete_site_option('blnotifier_enable_good_links');
delete_option('blnotifier_show_in_console');
delete_site_option('blnotifier_show_in_console');
delete_option('blnotifier_scan_header');
delete_site_option('blnotifier_scan_header');
delete_option('blnotifier_scan_footer');
delete_site_option('blnotifier_scan_footer');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_post_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_post_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_post_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_post_url' ) );

