<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ta_link_prefix');
delete_site_option('ta_link_prefix');
delete_option('ta_link_prefix_custom');
delete_site_option('ta_link_prefix_custom');
delete_option('ta_uncloak_link_per_link');
delete_site_option('ta_uncloak_link_per_link');
delete_option('ta_category_to_uncloak');
delete_site_option('ta_category_to_uncloak');
delete_option('ta_legacy_uploader');
delete_site_option('ta_legacy_uploader');
delete_option('ta_link_redirect_type');
delete_site_option('ta_link_redirect_type');
delete_option('ta_no_follow');
delete_site_option('ta_no_follow');
delete_option('ta_new_window');
delete_site_option('ta_new_window');
delete_option('ta_pass_query_str');
delete_site_option('ta_pass_query_str');
delete_option('ta_additional_rel_tags');
delete_site_option('ta_additional_rel_tags');
delete_option('ta_disable_cat_auto_select');
delete_site_option('ta_disable_cat_auto_select');
delete_option('ta_show_cat_in_slug');
delete_site_option('ta_show_cat_in_slug');
delete_option('ta_activation_code_triggered');
delete_site_option('ta_activation_code_triggered');
delete_option('ta_database_tables_created');
delete_site_option('ta_database_tables_created');
delete_option('ta_link_insertion_type');
delete_site_option('ta_link_insertion_type');
delete_option('ta_disable_text_editor_buttons');
delete_site_option('ta_disable_text_editor_buttons');
delete_option('ta_guided_tour_status');
delete_site_option('ta_guided_tour_status');
delete_option('ta_enable_link_fixer');
delete_site_option('ta_enable_link_fixer');
delete_option('ta_used_link_prefixes');
delete_site_option('ta_used_link_prefixes');
delete_option('ta_disable_idat_link_class');
delete_site_option('ta_disable_idat_link_class');
delete_option('ta_disable_title_attribute');
delete_site_option('ta_disable_title_attribute');
delete_option('ta_disable_visual_editor_buttons');
delete_site_option('ta_disable_visual_editor_buttons');
delete_option('idatOptions');
delete_site_option('idatOptions');
delete_option('tap_amazon_associate_tags');
delete_site_option('tap_amazon_associate_tags');
delete_option('tap_azon_import_images');
delete_site_option('tap_azon_import_images');
delete_option('ta_settings_initialized');
delete_site_option('ta_settings_initialized');
delete_option('ta_links_to_uncloak');
delete_site_option('ta_links_to_uncloak');
delete_option('ta_uncloak_link_per_category');
delete_site_option('ta_uncloak_link_per_category');
delete_option('ta_enable_stats_reporting_module');
delete_site_option('ta_enable_stats_reporting_module');

// Delete Transients
delete_transient('ta_flush_rewrite_rules');
delete_site_transient('ta_flush_rewrite_rules');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%image_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%image_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%image_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%image_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%rel_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%rel_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%rel_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%rel_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ta_category_slug_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ta_category_slug_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ta_category_slug_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ta_category_slug_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ta_category_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ta_category_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ta_category_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ta_category_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'idatData' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'idatData' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'idatData' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'idatData' ) );

