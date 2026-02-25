<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xyz_credit_link');
delete_site_option('xyz_credit_link');
delete_option('twap_installed_date');
delete_site_option('twap_installed_date');
delete_option('xyz_twap_dnt_shw_notice');
delete_site_option('xyz_twap_dnt_shw_notice');
delete_option('xyz_twap_credit_dismiss');
delete_site_option('xyz_twap_credit_dismiss');
delete_option('xyz_twap_client_id');
delete_site_option('xyz_twap_client_id');
delete_option('xyz_twap_client_secret');
delete_site_option('xyz_twap_client_secret');
delete_option('xyz_twap_peer_verification');
delete_site_option('xyz_twap_peer_verification');
delete_option('xyz_twap_tw_token');
delete_site_option('xyz_twap_tw_token');
delete_option('xyz_twap_tw_refresh_token');
delete_site_option('xyz_twap_tw_refresh_token');
delete_option('xyz_twap_last_auth_time');
delete_site_option('xyz_twap_last_auth_time');
delete_option('xyz_twap_tw_af');
delete_site_option('xyz_twap_tw_af');
delete_option('xyz_twap_twconsumer_secret');
delete_site_option('xyz_twap_twconsumer_secret');
delete_option('xyz_twap_twconsumer_id');
delete_site_option('xyz_twap_twconsumer_id');
delete_option('xyz_twap_tw_id');
delete_site_option('xyz_twap_tw_id');
delete_option('xyz_twap_current_twappln_token');
delete_site_option('xyz_twap_current_twappln_token');
delete_option('xyz_twap_twpost_permission');
delete_site_option('xyz_twap_twpost_permission');
delete_option('xyz_twap_twpost_image_permission');
delete_site_option('xyz_twap_twpost_image_permission');
delete_option('xyz_twap_twaccestok_secret');
delete_site_option('xyz_twap_twaccestok_secret');
delete_option('xyz_twap_twmessage');
delete_site_option('xyz_twap_twmessage');
delete_option('xyz_twap_future_to_publish');
delete_site_option('xyz_twap_future_to_publish');
delete_option('xyz_twap_apply_filters');
delete_site_option('xyz_twap_apply_filters');
delete_option('xyz_twap_free_version');
delete_site_option('xyz_twap_free_version');
delete_option('xyz_twap_tw_enforce_twitter_cards');
delete_site_option('xyz_twap_tw_enforce_twitter_cards');
delete_option('xyz_twap_include_pages');
delete_site_option('xyz_twap_include_pages');
delete_option('xyz_twap_include_posts');
delete_site_option('xyz_twap_include_posts');
delete_option('xyz_twap_include_categories');
delete_site_option('xyz_twap_include_categories');
delete_option('xyz_twap_include_customposttypes');
delete_site_option('xyz_twap_include_customposttypes');
delete_option('xyz_twap_post_logs');
delete_site_option('xyz_twap_post_logs');
delete_option('xyz_twap_premium_version_ads');
delete_site_option('xyz_twap_premium_version_ads');
delete_option('xyz_twap_default_selection_edit');
delete_site_option('xyz_twap_default_selection_edit');
delete_option('xyz_twap_default_selection_create');
delete_site_option('xyz_twap_default_selection_create');
delete_option('xyz_twap_tw_char_limit');
delete_site_option('xyz_twap_tw_char_limit');
delete_option('xyz_twap_tw_app_sel_mode');
delete_site_option('xyz_twap_tw_app_sel_mode');
delete_option('xyz_twap_smapsoln_userid');
delete_site_option('xyz_twap_smapsoln_userid');
delete_option('xyz_twap_smapsoln_secret_key');
delete_site_option('xyz_twap_smapsoln_secret_key');
delete_option('xyz_twap_xyzscripts_user_id');
delete_site_option('xyz_twap_xyzscripts_user_id');
delete_option('xyz_twap_xyzscripts_hash_val');
delete_site_option('xyz_twap_xyzscripts_hash_val');
delete_option('xyz_smap_free_enforce_twitter_cards');
delete_site_option('xyz_smap_free_enforce_twitter_cards');
delete_option('xyz_smap_apply_filters');
delete_site_option('xyz_smap_apply_filters');

// Clear Cron Jobs
wp_clear_scheduled_hook('xyz_twap_tw_auto_reauth');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'xyz_twap_future_to_publish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'xyz_twap_future_to_publish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'xyz_twap_future_to_publish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'xyz_twap_future_to_publish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'xyz_twap_insert_twitter_card' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'xyz_twap_insert_twitter_card' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'xyz_twap_insert_twitter_card' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'xyz_twap_insert_twitter_card' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'xyz_twap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'xyz_twap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'xyz_twap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'xyz_twap' ) );

