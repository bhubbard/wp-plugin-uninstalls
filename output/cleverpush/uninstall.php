<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cleverpush_channel_config');
delete_site_option('cleverpush_channel_config');
delete_option('cleverpush_amp_widget_position');
delete_site_option('cleverpush_amp_widget_position');
delete_option('cleverpush_channel_id');
delete_site_option('cleverpush_channel_id');
delete_option('cleverpush_apikey_private');
delete_site_option('cleverpush_apikey_private');
delete_option('cleverpush_enable_domain_replacement');
delete_site_option('cleverpush_enable_domain_replacement');
delete_option('cleverpush_replacement_domain');
delete_site_option('cleverpush_replacement_domain');
delete_option('cleverpush_feed_maximum_articles');
delete_site_option('cleverpush_feed_maximum_articles');
delete_option('cleverpush_feed_maximum_days');
delete_site_option('cleverpush_feed_maximum_days');
delete_option('cleverpush_woocommerce_notification_minutes');
delete_site_option('cleverpush_woocommerce_notification_minutes');
delete_option('cleverpush_woocommerce_notification_text');
delete_site_option('cleverpush_woocommerce_notification_text');
delete_option('cleverpush_capabilities_version');
delete_site_option('cleverpush_capabilities_version');
delete_option('cleverpush_post_types');
delete_site_option('cleverpush_post_types');
delete_option('cleverpush_preview_access_enabled');
delete_site_option('cleverpush_preview_access_enabled');
delete_option('cleverpush_amp_enabled');
delete_site_option('cleverpush_amp_enabled');
delete_option('cleverpush_flush_rewrite_rules_flag');
delete_site_option('cleverpush_flush_rewrite_rules_flag');
delete_option('cleverpush_stories_enabled');
delete_site_option('cleverpush_stories_enabled');
delete_option('cleverpush_channel_hidden_notification_settings');
delete_site_option('cleverpush_channel_hidden_notification_settings');
delete_option('cleverpush_notification_title_required');
delete_site_option('cleverpush_notification_title_required');
delete_option('cleverpush_notification_result');
delete_site_option('cleverpush_notification_result');
delete_option('cleverpush_notification_error');
delete_site_option('cleverpush_notification_error');
delete_option('cleverpush_channel_subdomain');
delete_site_option('cleverpush_channel_subdomain');
delete_option('cleverpush_channel_worker_file');
delete_site_option('cleverpush_channel_worker_file');
delete_option('cleverpush_apikey_public');
delete_site_option('cleverpush_apikey_public');
delete_option('cleverpush_feed_enabled');
delete_site_option('cleverpush_feed_enabled');
delete_option('cleverpush_script_disabled');
delete_site_option('cleverpush_script_disabled');
delete_option('cleverpush_script_blocked_consentmanager_enabled');
delete_site_option('cleverpush_script_blocked_consentmanager_enabled');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cleverpush_amp_script_%', '_site_transient_cleverpush_amp_script_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_content', '_site_transient_%_content' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_time', '_site_transient_%_time' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('cleverpush_segments_response');
delete_site_transient('cleverpush_segments_response');
delete_transient('cleverpush_topics_response');
delete_site_transient('cleverpush_topics_response');
delete_transient('cleverpush_tags_response');
delete_site_transient('cleverpush_tags_response');

// Clear Cron Jobs
wp_clear_scheduled_hook('cleverpush_check_if_product_bought');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cleverpush_story_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cleverpush_story_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cleverpush_story_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cleverpush_story_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cleverpush_notification_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cleverpush_notification_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cleverpush_notification_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cleverpush_notification_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cleverpush_notification_sent_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cleverpush_notification_sent_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cleverpush_notification_sent_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cleverpush_notification_sent_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cleverpush_send_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cleverpush_send_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cleverpush_send_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cleverpush_send_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cleverpush_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cleverpush_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cleverpush_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cleverpush_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cleverpush_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cleverpush_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cleverpush_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cleverpush_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cleverpush_scheduled_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cleverpush_scheduled_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cleverpush_scheduled_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cleverpush_scheduled_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cleverpush_disable_feed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cleverpush_disable_feed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cleverpush_disable_feed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cleverpush_disable_feed' ) );

