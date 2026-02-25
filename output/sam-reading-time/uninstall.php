<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sam_reading_time_words_per_minute');
delete_site_option('sam_reading_time_words_per_minute');
delete_option('sam_reading_time_singular_format');
delete_site_option('sam_reading_time_singular_format');
delete_option('sam_reading_time_plural_format');
delete_site_option('sam_reading_time_plural_format');
delete_option('sam_reading_time_less_than_a_minute_format');
delete_site_option('sam_reading_time_less_than_a_minute_format');
delete_option('sam_reading_time_prefix_text');
delete_site_option('sam_reading_time_prefix_text');
delete_option('sam_reading_time_suffix_text');
delete_site_option('sam_reading_time_suffix_text');
delete_option('sam_reading_time_wrapper_tag');
delete_site_option('sam_reading_time_wrapper_tag');
delete_option('sam_reading_time_hide_if_less_than_a_minute');
delete_site_option('sam_reading_time_hide_if_less_than_a_minute');
delete_option('sam_reading_time_enable_debug_output');
delete_site_option('sam_reading_time_enable_debug_output');
delete_option('sam_reading_time_enable_schema_time_required');
delete_site_option('sam_reading_time_enable_schema_time_required');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sam_reading_time_minutes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sam_reading_time_minutes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sam_reading_time_minutes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sam_reading_time_minutes' ) );

