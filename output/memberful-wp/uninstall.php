<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('memberful_wp_activation_redirect');
delete_site_option('memberful_wp_activation_redirect');
delete_option('memberful_extend_auth_cookie_expiration');
delete_site_option('memberful_extend_auth_cookie_expiration');
delete_option('memberful_acl');
delete_site_option('memberful_acl');
delete_option('memberful_posts_available_to_any_registered_user');
delete_site_option('memberful_posts_available_to_any_registered_user');
delete_option('memberful_posts_available_to_anybody_subscribed_to_a_plan');
delete_site_option('memberful_posts_available_to_anybody_subscribed_to_a_plan');
delete_option('memberful_terms_available_to_any_registered_user');
delete_site_option('memberful_terms_available_to_any_registered_user');
delete_option('memberful_terms_available_to_anybody_subscribed_to_a_plan');
delete_site_option('memberful_terms_available_to_anybody_subscribed_to_a_plan');
delete_option('memberful_term_acl');
delete_site_option('memberful_term_acl');
delete_option('memberful_db_version');
delete_site_option('memberful_db_version');
delete_option('memberful_use_global_marketing');
delete_site_option('memberful_use_global_marketing');
delete_option('memberful_use_global_snippets');
delete_site_option('memberful_use_global_snippets');
delete_option('memberful_default_marketing_content');
delete_site_option('memberful_default_marketing_content');
delete_option('memberful_global_marketing_content');
delete_site_option('memberful_global_marketing_content');
delete_option('memberful_global_marketing_override');
delete_site_option('memberful_global_marketing_override');
delete_option('memberful_embed_enabled');
delete_site_option('memberful_embed_enabled');
delete_option('memberful_hide_admin_toolbar');
delete_site_option('memberful_hide_admin_toolbar');
delete_option('memberful_block_dashboard_access');
delete_site_option('memberful_block_dashboard_access');
delete_option('memberful_filter_account_menu_items');
delete_site_option('memberful_filter_account_menu_items');
delete_option('memberful_auto_sync_display_names');
delete_site_option('memberful_auto_sync_display_names');
delete_option('memberful_show_protected_content_in_search');
delete_site_option('memberful_show_protected_content_in_search');
delete_option('memberful_products');
delete_site_option('memberful_products');
delete_option('memberful_subscriptions');
delete_site_option('memberful_subscriptions');
delete_option('memberful_feeds');
delete_site_option('memberful_feeds');
delete_option('memberful_client_id');
delete_site_option('memberful_client_id');
delete_option('memberful_client_secret');
delete_site_option('memberful_client_secret');
delete_option('memberful_api_key');
delete_site_option('memberful_api_key');
delete_option('memberful_site');
delete_site_option('memberful_site');
delete_option('memberful_webhook_secret');
delete_site_option('memberful_webhook_secret');
delete_option('memberful_custom_domain');
delete_site_option('memberful_custom_domain');
delete_option('memberful_role_active_customer');
delete_site_option('memberful_role_active_customer');
delete_option('memberful_role_inactive_customer');
delete_site_option('memberful_role_inactive_customer');
delete_option('memberful_plan_role_mappings');
delete_site_option('memberful_plan_role_mappings');
delete_option('memberful_add_block_tags_to_rss_feed');
delete_site_option('memberful_add_block_tags_to_rss_feed');
delete_option('memberful_error_log');
delete_site_option('memberful_error_log');
delete_option('memberful_bbpress_restricted_registered_users');
delete_site_option('memberful_bbpress_restricted_registered_users');
delete_option('memberful_bbpress_restricted_subscribed_users');
delete_site_option('memberful_bbpress_restricted_subscribed_users');
delete_option('memberful_bbpress_protect_forums');
delete_site_option('memberful_bbpress_protect_forums');
delete_option('memberful_bbpress_required_subscription_plans');
delete_site_option('memberful_bbpress_required_subscription_plans');
delete_option('memberful_bbpress_required_downloads');
delete_site_option('memberful_bbpress_required_downloads');
delete_option('memberful_bbpress_send_unauthorized_users_to_homepage');
delete_site_option('memberful_bbpress_send_unauthorized_users_to_homepage');
delete_option('memberful_bbpress_send_unauthorized_users_to_url');
delete_site_option('memberful_bbpress_send_unauthorized_users_to_url');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%s' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('memberful_private_user_feed_plan');
delete_site_option('memberful_private_user_feed_plan');
delete_option('memberful_use_per_plan_roles');
delete_site_option('memberful_use_per_plan_roles');

// Clear Cron Jobs
wp_clear_scheduled_hook('memberful_wp_cron_sync');
wp_clear_scheduled_hook('memberful_wp_cron_sync_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'memberful_available_to_any_registered_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'memberful_available_to_any_registered_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'memberful_available_to_any_registered_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'memberful_available_to_any_registered_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'memberful_available_to_anybody_subscribed_to_a_plan' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'memberful_available_to_anybody_subscribed_to_a_plan' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'memberful_available_to_anybody_subscribed_to_a_plan' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'memberful_available_to_anybody_subscribed_to_a_plan' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'memberful_acl' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'memberful_acl' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'memberful_acl' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'memberful_acl' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'course_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'course_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'course_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'course_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lesson_course' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lesson_course' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lesson_course' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lesson_course' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'memberful_private_user_feed_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'memberful_private_user_feed_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'memberful_private_user_feed_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'memberful_private_user_feed_token' ) );

