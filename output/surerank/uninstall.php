<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('surerank_onboarding_skipped');
delete_site_option('surerank_onboarding_skipped');
delete_option('surerank_redirect_on_activation');
delete_site_option('surerank_redirect_on_activation');
delete_option('surerank_onboarding_completed');
delete_site_option('surerank_onboarding_completed');
delete_option('surerank_welcome_video');
delete_site_option('surerank_welcome_video');
delete_option('zipwp_user_business_details');
delete_site_option('zipwp_user_business_details');
delete_option('surerank_completed_migrations');
delete_site_option('surerank_completed_migrations');
delete_option('surerank_migration_ever_completed');
delete_site_option('surerank_migration_ever_completed');
delete_option('surerank_auth');
delete_site_option('surerank_auth');
delete_option('surerank_sitemap_classes');
delete_site_option('surerank_sitemap_classes');
delete_option('surerank_cache_generation_post_offset');
delete_site_option('surerank_cache_generation_post_offset');
delete_option('woocommerce_permalinks');
delete_site_option('woocommerce_permalinks');
delete_option('surerank_gsc_verification_token');
delete_site_option('surerank_gsc_verification_token');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('surerank_cron_test_ok');
delete_site_option('surerank_cron_test_ok');
delete_option('surerank_google_console_credentials');
delete_site_option('surerank_google_console_credentials');
delete_option('rank-math-options-titles');
delete_site_option('rank-math-options-titles');
delete_option('rank-math-options-sitemap');
delete_site_option('rank-math-options-sitemap');
delete_option('seopress_titles_option_name');
delete_site_option('seopress_titles_option_name');
delete_option('seopress_social_option_name');
delete_site_option('seopress_social_option_name');
delete_option('seopress_xml_sitemap_option_name');
delete_site_option('seopress_xml_sitemap_option_name');
delete_option('seopress_advanced_option_name');
delete_site_option('seopress_advanced_option_name');
delete_option('wpseo_taxonomy_meta');
delete_site_option('wpseo_taxonomy_meta');
delete_option('wpseo_titles');
delete_site_option('wpseo_titles');
delete_option('wpseo_social');
delete_site_option('wpseo_social');
delete_option('wpseo');
delete_site_option('wpseo');
delete_option('allowed_astra_notices');
delete_site_option('allowed_astra_notices');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_usage_optin' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bsf_usage_last_displayed_time');
delete_site_option('bsf_usage_last_displayed_time');
delete_option('bsf_usage_migrated');
delete_site_option('bsf_usage_migrated');
delete_option('bsf_analytics_last_displayed_time');
delete_site_option('bsf_analytics_last_displayed_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_analytics_optin' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_analytics_installed_time' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_usage_installed_time' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('surerank_settings_onboarding');
delete_site_option('surerank_settings_onboarding');
delete_option('surerank_usage_optin');
delete_site_option('surerank_usage_optin');
delete_option('surerank_email_reports_settings');
delete_site_option('surerank_email_reports_settings');
delete_option('surerank_email_reports_cron_cleanup_done');
delete_site_option('surerank_email_reports_cron_cleanup_done');
delete_option('surerank_email_report_last_sent');
delete_site_option('surerank_email_report_last_sent');
delete_option('woocommerce_cart_page_id');
delete_site_option('woocommerce_cart_page_id');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('surerank_flush_required');
delete_site_option('surerank_flush_required');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('bsf_analytics_track');
delete_site_transient('bsf_analytics_track');
delete_transient('bsf_usage_track');
delete_site_transient('bsf_usage_track');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bricks_page_content_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bricks_page_content_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bricks_page_content_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bricks_page_content_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_surerank_source_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_surerank_source_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_surerank_source_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_surerank_source_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_surerank_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_surerank_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_surerank_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_surerank_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'surerank_settings_general' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'surerank_settings_general' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'surerank_settings_general' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'surerank_settings_general' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'surerank_seo_checks_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'surerank_seo_checks_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'surerank_seo_checks_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'surerank_seo_checks_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'surerank_settings_post_no_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'surerank_settings_post_no_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'surerank_settings_post_no_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'surerank_settings_post_no_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fusion_builder_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fusion_builder_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fusion_builder_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fusion_builder_status' ) );

