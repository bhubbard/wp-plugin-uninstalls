<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sbp_activation_defaults');
delete_site_option('sbp_activation_defaults');
delete_option('sbp_activation_redirect');
delete_site_option('sbp_activation_redirect');
delete_option('sbp_public_post_types');
delete_site_option('sbp_public_post_types');
delete_option('sbp_migrator_version');
delete_site_option('sbp_migrator_version');
delete_option('sbp_settings');
delete_site_option('sbp_settings');
delete_option('sbp_options');
delete_site_option('sbp_options');
delete_option('sbp_preboost');
delete_site_option('sbp_preboost');
delete_option('sbp_js_footer_exceptions');
delete_site_option('sbp_js_footer_exceptions');
delete_option('sbp_css_exceptions');
delete_site_option('sbp_css_exceptions');
delete_option('sbp_js_exceptions');
delete_site_option('sbp_js_exceptions');
delete_option('sbp_js_footer_exceptions1');
delete_site_option('sbp_js_footer_exceptions1');
delete_option('sbp_js_footer_exceptions2');
delete_site_option('sbp_js_footer_exceptions2');
delete_option('sbp_js_footer_exceptions3');
delete_site_option('sbp_js_footer_exceptions3');
delete_option('sbp_js_footer_exceptions4');
delete_site_option('sbp_js_footer_exceptions4');
delete_option('sbp_lazyload_exclusions');
delete_site_option('sbp_lazyload_exclusions');
delete_option('sbp_defer_exceptions1');
delete_site_option('sbp_defer_exceptions1');
delete_option('sbp_defer_exceptions2');
delete_site_option('sbp_defer_exceptions2');
delete_option('sbp_defer_exceptions3');
delete_site_option('sbp_defer_exceptions3');
delete_option('sbp_defer_exceptions4');
delete_site_option('sbp_defer_exceptions4');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_analytics_enabled');
delete_site_option('woocommerce_analytics_enabled');
delete_option('woocommerce_allow_tracking');
delete_site_option('woocommerce_allow_tracking');
delete_option('sbp_notice_error');
delete_site_option('sbp_notice_error');
delete_option('sbp_transient_error');
delete_site_option('sbp_transient_error');
delete_option('sbp_announcements');
delete_site_option('sbp_announcements');

// Delete Transients
delete_transient('sbp_warmup_started');
delete_site_transient('sbp_warmup_started');
delete_transient('sbp_warmup_process');
delete_site_transient('sbp_warmup_process');
delete_transient('sbp_notice_cache');
delete_site_transient('sbp_notice_cache');
delete_transient('sbp_wp_config_error');
delete_site_transient('sbp_wp_config_error');
delete_transient('sbp_advanced_cache_error');
delete_site_transient('sbp_advanced_cache_error');
delete_transient('sbp_do_not_update_cloudflare');
delete_site_transient('sbp_do_not_update_cloudflare');
delete_transient('sbp_notice_cloudflare');
delete_site_transient('sbp_notice_cloudflare');
delete_transient('sbp_notice_tracker_localizer');
delete_site_transient('sbp_notice_tracker_localizer');
delete_transient('sbp_migrated_from_legacy');
delete_site_transient('sbp_migrated_from_legacy');
delete_transient('sbp_options_migrated');
delete_site_transient('sbp_options_migrated');
delete_transient('sbp_sucuri_status');
delete_site_transient('sbp_sucuri_status');
delete_transient('sbp_sucuri_error');
delete_site_transient('sbp_sucuri_error');
delete_transient('sbp_clear_sucuri_cache');
delete_site_transient('sbp_clear_sucuri_cache');
delete_transient('sbp_cloudflare_status');
delete_site_transient('sbp_cloudflare_status');
delete_transient('sbp_upgraded_notice');
delete_site_transient('sbp_upgraded_notice');
delete_transient('sbp_warmup_errors');
delete_site_transient('sbp_warmup_errors');
delete_transient('sbp_warmup_completed');
delete_site_transient('sbp_warmup_completed');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sbp_dismissed_compat_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sbp_dismissed_compat_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sbp_dismissed_compat_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sbp_dismissed_compat_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sbp_newsletter_display_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sbp_newsletter_display_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sbp_newsletter_display_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sbp_newsletter_display_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sbp_hide_newsletter_pointer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sbp_hide_newsletter_pointer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sbp_hide_newsletter_pointer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sbp_hide_newsletter_pointer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sbp_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sbp_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sbp_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sbp_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sbp_post_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sbp_post_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sbp_post_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sbp_post_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sbp_tweet_notice_display_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sbp_tweet_notice_display_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sbp_tweet_notice_display_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sbp_tweet_notice_display_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sbp_rate_wp_org_notice_display_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sbp_rate_wp_org_notice_display_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sbp_rate_wp_org_notice_display_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sbp_rate_wp_org_notice_display_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sbp_dismissed_messages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sbp_dismissed_messages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sbp_dismissed_messages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sbp_dismissed_messages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sbp_intro' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sbp_intro' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sbp_intro' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sbp_intro' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_csf_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_csf_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_csf_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_csf_errors_%' ) );

