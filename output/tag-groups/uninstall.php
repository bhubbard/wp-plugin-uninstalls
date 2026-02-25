<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tag_group_admin_notice');
delete_site_option('tag_group_admin_notice');
delete_option('tag_group_shortcode_widget');
delete_site_option('tag_group_shortcode_widget');
delete_option('tag_group_shortcode_enqueue_always');
delete_site_option('tag_group_shortcode_enqueue_always');
delete_option('tag_group_tags_filter');
delete_site_option('tag_group_tags_filter');
delete_option('tag_group_reset_when_uninstall');
delete_site_option('tag_group_reset_when_uninstall');
delete_option('tag_group_sample_page_id');
delete_site_option('tag_group_sample_page_id');
delete_option('tag_group_taxonomy');
delete_site_option('tag_group_taxonomy');
delete_option('tag_group_base_first_activation_time');
delete_site_option('tag_group_base_first_activation_time');
delete_option('tag_group_labels');
delete_site_option('tag_group_labels');
delete_option('tag_group_ids');
delete_site_option('tag_group_ids');
delete_option('max_tag_group_id');
delete_site_option('max_tag_group_id');
delete_option('chatty_mango_cache');
delete_site_option('chatty_mango_cache');
delete_option('term_group_labels');
delete_site_option('term_group_labels');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'term_group_labels_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('tag_group_group_languages');
delete_site_option('tag_group_group_languages');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');

// Clear Cron Jobs
wp_clear_scheduled_hook('tag_groups_check_tag_migration');
wp_clear_scheduled_hook('tag_groups_purge_expired_transients');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cm_term_group_array' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cm_term_group_array' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cm_term_group_array' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cm_term_group_array' ) );

