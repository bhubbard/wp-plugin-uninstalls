<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chrmrtns_puzzlesync_enabled');
delete_site_option('chrmrtns_puzzlesync_enabled');
delete_option('chrmrtns_puzzlesync_auto_detect');
delete_site_option('chrmrtns_puzzlesync_auto_detect');
delete_option('chrmrtns_puzzlesync_enable_json_ld');
delete_site_option('chrmrtns_puzzlesync_enable_json_ld');
delete_option('chrmrtns_puzzlesync_show_flags');
delete_site_option('chrmrtns_puzzlesync_show_flags');
delete_option('chrmrtns_puzzlesync_auto_menu_flags');
delete_site_option('chrmrtns_puzzlesync_auto_menu_flags');
delete_option('chrmrtns_puzzlesync_menu_flags_display');
delete_site_option('chrmrtns_puzzlesync_menu_flags_display');
delete_option('chrmrtns_puzzlesync_languages');
delete_site_option('chrmrtns_puzzlesync_languages');
delete_option('chrmrtns_puzzlesync_migration_version');
delete_site_option('chrmrtns_puzzlesync_migration_version');
delete_option('chrmrtns_puzzlesync_enable_validation');
delete_site_option('chrmrtns_puzzlesync_enable_validation');
delete_option('chrmrtns_puzzlesync_check_url_accessibility');
delete_site_option('chrmrtns_puzzlesync_check_url_accessibility');
delete_option('chrmrtns_puzzlesync_db_version');
delete_site_option('chrmrtns_puzzlesync_db_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'chrmrtns_puzzlesync_translation_group' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'chrmrtns_puzzlesync_translation_group' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'chrmrtns_puzzlesync_translation_group' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'chrmrtns_puzzlesync_translation_group' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'chrmrtns_puzzlesync_hreflang_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'chrmrtns_puzzlesync_hreflang_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'chrmrtns_puzzlesync_hreflang_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'chrmrtns_puzzlesync_hreflang_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'chrmrtns_puzzlesync_hreflang_en' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'chrmrtns_puzzlesync_hreflang_en' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'chrmrtns_puzzlesync_hreflang_en' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'chrmrtns_puzzlesync_hreflang_en' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'chrmrtns_puzzlesync_hreflang_de' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'chrmrtns_puzzlesync_hreflang_de' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'chrmrtns_puzzlesync_hreflang_de' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'chrmrtns_puzzlesync_hreflang_de' ) );

