<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aikct_free_api_activated');
delete_site_option('aikct_free_api_activated');
delete_option('aikct_apikey_token_huggingface');
delete_site_option('aikct_apikey_token_huggingface');
delete_option('aikct_apikey_gpt35');
delete_site_option('aikct_apikey_gpt35');
delete_option('aikct_apikey_gpt4o');
delete_site_option('aikct_apikey_gpt4o');
delete_option('aikct_apikey_gemini');
delete_site_option('aikct_apikey_gemini');
delete_option('aikct_apikey_token_cloudfalre');
delete_site_option('aikct_apikey_token_cloudfalre');
delete_option('aikct_apikey_account_id_cloudfalre');
delete_site_option('aikct_apikey_account_id_cloudfalre');
delete_option('aikct_apikey_languages');
delete_site_option('aikct_apikey_languages');
delete_option('aikct_images');
delete_site_option('aikct_images');
delete_option('aikct_tags');
delete_site_option('aikct_tags');
delete_option('aikct_comment');
delete_site_option('aikct_comment');
delete_option('aikct_idea_title');
delete_site_option('aikct_idea_title');
delete_option('aikct_blogfromyoutube');
delete_site_option('aikct_blogfromyoutube');
delete_option('aikct_rewrite_from_url');
delete_site_option('aikct_rewrite_from_url');
delete_option('aikct_rewrite_post_cron_time');
delete_site_option('aikct_rewrite_post_cron_time');
delete_option('aikct_rewrite_content_old_post');
delete_site_option('aikct_rewrite_content_old_post');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aikct_prompt_params' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aikct_prompt_params' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aikct_prompt_params' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aikct_prompt_params' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_old_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_old_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_old_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_old_content' ) );

