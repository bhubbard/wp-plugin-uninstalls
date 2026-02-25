<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('npr_cds_pull_url');
delete_site_option('npr_cds_pull_url');
delete_option('npr_cds_token');
delete_site_option('npr_cds_token');
delete_option('npr_cds_pull_post_type');
delete_site_option('npr_cds_pull_post_type');
delete_option('npr_cds_import_tags');
delete_site_option('npr_cds_import_tags');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'npr_cds_query_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('npr_cds_org_id');
delete_site_option('npr_cds_org_id');
delete_option('npr_cds_prefix');
delete_site_option('npr_cds_prefix');
delete_option('npr_cds_push_url');
delete_site_option('npr_cds_push_url');
delete_option('npr_cds_image_format');
delete_site_option('npr_cds_image_format');
delete_option('npr_cds_image_quality');
delete_site_option('npr_cds_image_quality');
delete_option('npr_cds_image_width');
delete_site_option('npr_cds_image_width');
delete_option('npr_cds_query_use_featured');
delete_site_option('npr_cds_query_use_featured');
delete_option('npr_cds_skip_promo_cards');
delete_site_option('npr_cds_skip_promo_cards');
delete_option('npr_cds_display_attribution');
delete_site_option('npr_cds_display_attribution');
delete_option('npr_cds_push_use_custom_map');
delete_site_option('npr_cds_push_use_custom_map');
delete_option('npr_cds_mapping_body');
delete_site_option('npr_cds_mapping_body');
delete_option('npr_cds_mapping_media_credit');
delete_site_option('npr_cds_mapping_media_credit');
delete_option('npr_cds_mapping_media_agency');
delete_site_option('npr_cds_mapping_media_agency');
delete_option('npr_cds_push_default');
delete_site_option('npr_cds_push_default');
delete_option('npr_cds_push_one_homepage_default');
delete_site_option('npr_cds_push_one_homepage_default');
delete_option('npr_cds_mapping_title');
delete_site_option('npr_cds_mapping_title');
delete_option('npr_cds_mapping_byline');
delete_site_option('npr_cds_mapping_byline');
delete_option('npr_cds_query_multi_cron_interval');
delete_site_option('npr_cds_query_multi_cron_interval');
delete_option('dp_npr_query_multi_cron_interval');
delete_site_option('dp_npr_query_multi_cron_interval');
delete_option('ds_npr_num');
delete_site_option('ds_npr_num');
delete_option('npr_cds_num');
delete_site_option('npr_cds_num');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ds_npr_query_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ds_npr_query_profileTypeID_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ds_npr_query_publish_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ds_npr_query_category_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ds_npr_query_tags_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ds_npr_pull_post_type');
delete_site_option('ds_npr_pull_post_type');
delete_option('ds_npr_push_post_type');
delete_site_option('ds_npr_push_post_type');
delete_option('npr_cds_push_post_type');
delete_site_option('npr_cds_push_post_type');
delete_option('ds_npr_api_org_id');
delete_site_option('ds_npr_api_org_id');
delete_option('dp_npr_query_run_multi');
delete_site_option('dp_npr_query_run_multi');
delete_option('npr_cds_query_run_multi');
delete_site_option('npr_cds_query_run_multi');
delete_option('dp_npr_query_use_featured');
delete_site_option('dp_npr_query_use_featured');
delete_option('ds_npr_push_use_custom_map');
delete_site_option('ds_npr_push_use_custom_map');
delete_option('ds_npr_api_mapping_title');
delete_site_option('ds_npr_api_mapping_title');
delete_option('ds_npr_api_mapping_body');
delete_site_option('ds_npr_api_mapping_body');
delete_option('ds_npr_api_mapping_byline');
delete_site_option('ds_npr_api_mapping_byline');
delete_option('ds_npr_api_mapping_media_credit');
delete_site_option('ds_npr_api_mapping_media_credit');
delete_option('ds_npr_api_mapping_media_agency');
delete_site_option('ds_npr_api_mapping_media_agency');
delete_option('dp_npr_query_use_layout');
delete_site_option('dp_npr_query_use_layout');
delete_option('ds_npr_story_default_permission');
delete_site_option('ds_npr_story_default_permission');
delete_option('ds_npr_api_key');
delete_site_option('ds_npr_api_key');
delete_option('ds_npr_api_pull_url');
delete_site_option('ds_npr_api_pull_url');
delete_option('ds_npr_api_push_url');
delete_site_option('ds_npr_api_push_url');
delete_option('ds_npr_api_get_multi_settings');
delete_site_option('ds_npr_api_get_multi_settings');
delete_option('dp_npr_push_use_custom_map');
delete_site_option('dp_npr_push_use_custom_map');
delete_option('npr_cds_old_options');
delete_site_option('npr_cds_old_options');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_meta_keys', '_site_transient_%_meta_keys' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('npr_cds_hourly_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '#NONE#' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '#NONE#' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '#NONE#' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '#NONE#' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_send_to_one' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_send_to_one' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_send_to_one' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_send_to_one' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_nprone_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_nprone_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_nprone_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_nprone_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'enclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'enclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'enclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'enclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'npr_story_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'npr_story_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'npr_story_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'npr_story_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_send_to_nprone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_send_to_nprone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_send_to_nprone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_send_to_nprone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'epc_primary_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'epc_primary_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'epc_primary_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'epc_primary_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_nprone_expiry_8601' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_nprone_expiry_8601' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_nprone_expiry_8601' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_nprone_expiry_8601' ) );

