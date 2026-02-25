<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('safetag_license_key');
delete_site_option('safetag_license_key');
delete_option('safetag_iab_tag_option');
delete_site_option('safetag_iab_tag_option');
delete_option('safetag_exclution_list_chron_option');
delete_site_option('safetag_exclution_list_chron_option');
delete_option('site_audience_iab_tags');
delete_site_option('site_audience_iab_tags');
delete_option('safetag_post_types');
delete_site_option('safetag_post_types');
delete_option('safetag_version');
delete_site_option('safetag_version');

// Delete Transients
delete_transient('safetag_post_types');
delete_site_transient('safetag_post_types');
delete_transient('iab_tags_resources');
delete_site_transient('iab_tags_resources');
delete_transient('iab_audience_tags');
delete_site_transient('iab_audience_tags');

// Clear Cron Jobs
wp_clear_scheduled_hook('safetag_update_post_keywords_result');
wp_clear_scheduled_hook('safetag_check_license_status');
wp_clear_scheduled_hook('safetag_update_post_keywords_result_temp');
wp_clear_scheduled_hook('safetag_add_update_post_campaign_keyword_status_temp');
wp_clear_scheduled_hook('safetag_genetate_post_campaign_table_record_temp');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'safetag_hide_programmatic_ads' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'safetag_hide_programmatic_ads' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'safetag_hide_programmatic_ads' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'safetag_hide_programmatic_ads' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'safetag_meta_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'safetag_meta_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'safetag_meta_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'safetag_meta_tags' ) );

