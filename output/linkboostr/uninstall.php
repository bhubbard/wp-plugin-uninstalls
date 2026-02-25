<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dila_max_suggestions');
delete_site_option('dila_max_suggestions');
delete_option('dila_auto_insert_links');
delete_site_option('dila_auto_insert_links');
delete_option('dila_enable_classic_editor');
delete_site_option('dila_enable_classic_editor');
delete_option('dila_indexing_trigger');
delete_site_option('dila_indexing_trigger');
delete_option('dila_excluded_post_types');
delete_site_option('dila_excluded_post_types');
delete_option('dila_enable_inline_highlights');
delete_site_option('dila_enable_inline_highlights');
delete_option('dila_min_internal_links');
delete_site_option('dila_min_internal_links');
delete_option('dila_db_version');
delete_site_option('dila_db_version');

// Delete Transients
delete_transient('dila_orphan_count');
delete_site_transient('dila_orphan_count');
delete_transient('dila_broken_links_cache');
delete_site_transient('dila_broken_links_cache');
delete_transient('dila_total_indexed_posts');
delete_site_transient('dila_total_indexed_posts');
delete_transient('dila_broken_links_count');
delete_site_transient('dila_broken_links_count');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_dila_suggestions_%', '_site_transient_dila_suggestions_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('dila_idf_scores');
delete_site_transient('dila_idf_scores');
delete_transient('dila_index_progress');
delete_site_transient('dila_index_progress');

// Clear Cron Jobs
wp_clear_scheduled_hook('dila_index_posts');
wp_clear_scheduled_hook('dila_daily_maintenance');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dila_inbound_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dila_inbound_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dila_inbound_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dila_inbound_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dila_last_indexed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dila_last_indexed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dila_last_indexed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dila_last_indexed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dila_keyword_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dila_keyword_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dila_keyword_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dila_keyword_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dila_outbound_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dila_outbound_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dila_outbound_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dila_outbound_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dila_onboarding_completed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dila_onboarding_completed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dila_onboarding_completed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dila_onboarding_completed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dila_onboarding_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dila_onboarding_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dila_onboarding_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dila_onboarding_dismissed' ) );

