<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clickrank_ai_db_version');
delete_site_option('clickrank_ai_db_version');
delete_option('clickrank_ai_max_log_entries');
delete_site_option('clickrank_ai_max_log_entries');
delete_option('clickrank_ai_api_key');
delete_site_option('clickrank_ai_api_key');
delete_option('_clickrank_ai_homepage_revert_data');
delete_site_option('_clickrank_ai_homepage_revert_data');
delete_option('_clickrank_ai_homepage_schema');
delete_site_option('_clickrank_ai_homepage_schema');
delete_option('_clickrank_ai_homepage_canonical');
delete_site_option('_clickrank_ai_homepage_canonical');
delete_option('_clickrank_ai_homepage_title');
delete_site_option('_clickrank_ai_homepage_title');
delete_option('_clickrank_ai_homepage_description');
delete_site_option('_clickrank_ai_homepage_description');
delete_option('clickrank_ai_api_status');
delete_site_option('clickrank_ai_api_status');
delete_option('clickrank_ai_enable_title_opt');
delete_site_option('clickrank_ai_enable_title_opt');
delete_option('clickrank_ai_enable_meta_opt');
delete_site_option('clickrank_ai_enable_meta_opt');
delete_option('clickrank_ai_enable_canonical_opt');
delete_site_option('clickrank_ai_enable_canonical_opt');
delete_option('clickrank_ai_enable_schema_opt');
delete_site_option('clickrank_ai_enable_schema_opt');
delete_option('clickrank_ai_enable_img_alt_opt');
delete_site_option('clickrank_ai_enable_img_alt_opt');
delete_option('clickrank_ai_enable_link_title_opt');
delete_site_option('clickrank_ai_enable_link_title_opt');
delete_option('clickrank_ai_activation_time');
delete_site_option('clickrank_ai_activation_time');
delete_option('clickrank_ai_table_creation_error');
delete_site_option('clickrank_ai_table_creation_error');
delete_option('clickrank_ai_install_date');
delete_site_option('clickrank_ai_install_date');
delete_option('clickrank_ai_plugin_version');
delete_site_option('clickrank_ai_plugin_version');
delete_option('clickrank_ai_remove_data_on_deactivate');
delete_site_option('clickrank_ai_remove_data_on_deactivate');
delete_option('clickrank_ai_last_deactivation');
delete_site_option('clickrank_ai_last_deactivation');
delete_option('clickrank_ai_migration_results');
delete_site_option('clickrank_ai_migration_results');
delete_option('clickrank_ai_use_post_meta');
delete_site_option('clickrank_ai_use_post_meta');
delete_option('wpseo_titles');
delete_site_option('wpseo_titles');
delete_option('rank-math-options-titles');
delete_site_option('rank-math-options-titles');
delete_option('rank-math-options-general');
delete_site_option('rank-math-options-general');
delete_option('rank_math_homepage_title');
delete_site_option('rank_math_homepage_title');
delete_option('rank_math_homepage_description');
delete_site_option('rank_math_homepage_description');

// Delete Transients
delete_transient('clickrank_ai_last_health_check');
delete_site_transient('clickrank_ai_last_health_check');
delete_transient('clickrank_ai_activation_redirect');
delete_site_transient('clickrank_ai_activation_redirect');
delete_transient('clickrank_ai_last_successful_connection');
delete_site_transient('clickrank_ai_last_successful_connection');

// Clear Cron Jobs
wp_clear_scheduled_hook('clickrank_ai_cleanup_logs');
wp_clear_scheduled_hook('clickrank_ai_health_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'clickrank_ai_activation_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'clickrank_ai_activation_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'clickrank_ai_activation_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'clickrank_ai_activation_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_clickrank_ai_revert_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_clickrank_ai_revert_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_clickrank_ai_revert_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_clickrank_ai_revert_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_clickrank_ai_canonical_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_clickrank_ai_canonical_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_clickrank_ai_canonical_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_clickrank_ai_canonical_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_clickrank_ai_page_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_clickrank_ai_page_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_clickrank_ai_page_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_clickrank_ai_page_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_clickrank_ai_link_titles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_clickrank_ai_link_titles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_clickrank_ai_link_titles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_clickrank_ai_link_titles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_clickrank_ai_seo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_clickrank_ai_seo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_clickrank_ai_seo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_clickrank_ai_seo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_clickrank_ai_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_clickrank_ai_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_clickrank_ai_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_clickrank_ai_meta_description' ) );

