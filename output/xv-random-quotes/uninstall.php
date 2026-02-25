<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xv_quotes_default_category_id');
delete_site_option('xv_quotes_default_category_id');
delete_option('xv_migration_pending');
delete_site_option('xv_migration_pending');
delete_option('xv_quotes_migrated_v2');
delete_site_option('xv_quotes_migrated_v2');
delete_option('xv_migration_total');
delete_site_option('xv_migration_total');
delete_option('xv_quotes_widgets_migrated');
delete_site_option('xv_quotes_widgets_migrated');
delete_option('widget_xv_random_quotes_widget');
delete_site_option('widget_xv_random_quotes_widget');
delete_option('_xv_quotes_migrated');
delete_site_option('_xv_quotes_migrated');
delete_option('xv_quotes_needs_migration');
delete_site_option('xv_quotes_needs_migration');
delete_option('stray_quotes_options');
delete_site_option('stray_quotes_options');
delete_option('xv_quotes_flush_rewrite_rules');
delete_site_option('xv_quotes_flush_rewrite_rules');

// Delete Transients
delete_transient('xv_migration_error');
delete_site_transient('xv_migration_error');
delete_transient('xv_migration_success');
delete_site_transient('xv_migration_success');
delete_transient('xv_migration_progress');
delete_site_transient('xv_migration_progress');
delete_transient('xv_migration_total');
delete_site_transient('xv_migration_total');
delete_transient('xv_migration_offset');
delete_site_transient('xv_migration_offset');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_quote_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_quote_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_quote_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_quote_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'author_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'author_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'author_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'author_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_quote_legacy_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_quote_legacy_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_quote_legacy_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_quote_legacy_id' ) );

