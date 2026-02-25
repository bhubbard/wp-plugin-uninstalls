<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xyz_credit_link');
delete_site_option('xyz_credit_link');
delete_option('fbap_installed_date');
delete_site_option('fbap_installed_date');
delete_option('xyz_fbap_dnt_shw_notice');
delete_site_option('xyz_fbap_dnt_shw_notice');
delete_option('xyz_fbap_smapsolutions_pack_expiry');
delete_site_option('xyz_fbap_smapsolutions_pack_expiry');
delete_option('xyz_fbap_credit_dismiss');
delete_site_option('xyz_fbap_credit_dismiss');
delete_option('xyz_fbap_page_names');
delete_site_option('xyz_fbap_page_names');
delete_option('xyz_fbap_af');
delete_site_option('xyz_fbap_af');
delete_option('xyz_fbap_secret_key');
delete_site_option('xyz_fbap_secret_key');
delete_option('xyz_fbap_fb_numericid');
delete_site_option('xyz_fbap_fb_numericid');
delete_option('xyz_fbap_smapsoln_userid');
delete_site_option('xyz_fbap_smapsoln_userid');
delete_option('xyz_fbap_xyzscripts_user_id');
delete_site_option('xyz_fbap_xyzscripts_user_id');
delete_option('xyz_fbap_xyzscripts_hash_val');
delete_site_option('xyz_fbap_xyzscripts_hash_val');
delete_option('xyz_fbap_application_id');
delete_site_option('xyz_fbap_application_id');
delete_option('xyz_fbap_application_secret');
delete_site_option('xyz_fbap_application_secret');
delete_option('xyz_fbap_peer_verification');
delete_site_option('xyz_fbap_peer_verification');
delete_option('xyz_fbap_fb_token');
delete_site_option('xyz_fbap_fb_token');
delete_option('xyz_fbap_pages_ids');
delete_site_option('xyz_fbap_pages_ids');
delete_option('xyz_fbap_application_name');
delete_site_option('xyz_fbap_application_name');
delete_option('xyz_fbap_message');
delete_site_option('xyz_fbap_message');
delete_option('xyz_fbap_po_method');
delete_site_option('xyz_fbap_po_method');
delete_option('xyz_fbap_post_permission');
delete_site_option('xyz_fbap_post_permission');
delete_option('xyz_fbap_current_appln_token');
delete_site_option('xyz_fbap_current_appln_token');
delete_option('xyz_fbap_apply_filters');
delete_site_option('xyz_fbap_apply_filters');
delete_option('xyz_fbap_free_version');
delete_site_option('xyz_fbap_free_version');
delete_option('xyz_fbap_include_pages');
delete_site_option('xyz_fbap_include_pages');
delete_option('xyz_fbap_include_posts');
delete_site_option('xyz_fbap_include_posts');
delete_option('xyz_fbap_include_categories');
delete_site_option('xyz_fbap_include_categories');
delete_option('xyz_fbap_include_customposttypes');
delete_site_option('xyz_fbap_include_customposttypes');
delete_option('xyz_fbap_post_logs');
delete_site_option('xyz_fbap_post_logs');
delete_option('xyz_twap_premium_version_ads');
delete_site_option('xyz_twap_premium_version_ads');
delete_option('xyz_fbap_default_selection_edit');
delete_site_option('xyz_fbap_default_selection_edit');
delete_option('xyz_fbap_default_selection_create');
delete_site_option('xyz_fbap_default_selection_create');
delete_option('xyz_fbap_app_sel_mode');
delete_site_option('xyz_fbap_app_sel_mode');
delete_option('xyz_fbap_enforce_og_tags');
delete_site_option('xyz_fbap_enforce_og_tags');
delete_option('xyz_fbap_clear_fb_cache');
delete_site_option('xyz_fbap_clear_fb_cache');
delete_option('xyz_fbap_premium_version_ads');
delete_site_option('xyz_fbap_premium_version_ads');
delete_option('xyz_fbap_caption_for_fb_attachment');
delete_site_option('xyz_fbap_caption_for_fb_attachment');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'xyz_fbap_insert_og' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'xyz_fbap_insert_og' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'xyz_fbap_insert_og' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'xyz_fbap_insert_og' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'xyz_fbap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'xyz_fbap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'xyz_fbap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'xyz_fbap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'xyz_fbap_future_to_publish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'xyz_fbap_future_to_publish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'xyz_fbap_future_to_publish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'xyz_fbap_future_to_publish' ) );

