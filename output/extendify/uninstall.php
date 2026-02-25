<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_transient_extendify_admin_pages_menu');
delete_site_option('_transient_extendify_admin_pages_menu');
delete_option('extendify_assist_tour_progress');
delete_site_option('extendify_assist_tour_progress');
delete_option('extendify_domains_recommendations_activities');
delete_site_option('extendify_domains_recommendations_activities');
delete_option('extendify_assist_globals');
delete_site_option('extendify_assist_globals');
delete_option('extendify_assist_router');
delete_site_option('extendify_assist_router');
delete_option('extendify_assist_tasks');
delete_site_option('extendify_assist_tasks');
delete_option('extendify_first_installed_version');
delete_site_option('extendify_first_installed_version');
delete_option('extendify_onboarding_completed');
delete_site_option('extendify_onboarding_completed');
delete_option('extendify_enable_preview_features_v1');
delete_site_option('extendify_enable_preview_features_v1');
delete_option('extendify_draft_router');
delete_site_option('extendify_draft_router');
delete_option('extendify_help_center_router');
delete_site_option('extendify_help_center_router');
delete_option('extendify_assist_support_articles');
delete_site_option('extendify_assist_support_articles');
delete_option('extendify_wc_import_results');
delete_site_option('extendify_wc_import_results');
delete_option('extendify_site_profile');
delete_site_option('extendify_site_profile');
delete_option('extendify_site_id');
delete_site_option('extendify_site_id');
delete_option('generate_settings');
delete_site_option('generate_settings');
delete_option('extendify_shared_activity');
delete_site_option('extendify_shared_activity');
delete_option('extendify_draft_settings');
delete_site_option('extendify_draft_settings');
delete_option('extendify_user_selections');
delete_site_option('extendify_user_selections');
delete_option('extendify_partner_data_v2');
delete_site_option('extendify_partner_data_v2');
delete_option('wpforms_settings');
delete_site_option('wpforms_settings');
delete_option('extendify_run_migrations');
delete_site_option('extendify_run_migrations');
delete_option('extendify_library_site_data');
delete_site_option('extendify_library_site_data');

// Delete Transients
delete_transient('extendify_partner_data_cache_check');
delete_site_transient('extendify_partner_data_cache_check');
delete_transient('extendify_recommendations_products');
delete_site_transient('extendify_recommendations_products');
delete_transient('extendify_domains');
delete_site_transient('extendify_domains');
delete_transient('extendify_recommendations');
delete_site_transient('extendify_recommendations');
delete_transient('extendify_supportArticles');
delete_site_transient('extendify_supportArticles');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_extendify_%', '_site_transient_extendify_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('extendify_apex_domain');
delete_site_transient('extendify_apex_domain');
delete_transient('extendify_site_url');
delete_site_transient('extendify_site_url');
delete_transient('extendify_home_url');
delete_site_transient('extendify_home_url');

// Clear Cron Jobs
wp_clear_scheduled_hook('extendify_update_domains_cache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_edit_lock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_edit_lock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_edit_lock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_edit_lock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'extendify_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'extendify_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'extendify_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'extendify_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'made_with_extendify_launch' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'made_with_extendify_launch' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'made_with_extendify_launch' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'made_with_extendify_launch' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'extendify_ai_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'extendify_ai_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'extendify_ai_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'extendify_ai_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_persisted_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_persisted_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_persisted_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_persisted_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'extendify_form_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'extendify_form_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'extendify_form_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'extendify_form_type' ) );

