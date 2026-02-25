<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xyz_credit_link');
delete_site_option('xyz_credit_link');
delete_option('lnap_installed_date');
delete_site_option('lnap_installed_date');
delete_option('xyz_lnap_dnt_shw_notice');
delete_site_option('xyz_lnap_dnt_shw_notice');
delete_option('xyz_lnap_smapsolutions_pack_expiry');
delete_site_option('xyz_lnap_smapsolutions_pack_expiry');
delete_option('xyz_lnap_credit_dismiss');
delete_site_option('xyz_lnap_credit_dismiss');
delete_option('xyz_lnap_page_names');
delete_site_option('xyz_lnap_page_names');
delete_option('xyz_lnap_lnaf');
delete_site_option('xyz_lnap_lnaf');
delete_option('xyz_lnap_secret_key');
delete_site_option('xyz_lnap_secret_key');
delete_option('xyz_lnap_lnappscoped_userid');
delete_site_option('xyz_lnap_lnappscoped_userid');
delete_option('xyz_lnap_smapsoln_userid');
delete_site_option('xyz_lnap_smapsoln_userid');
delete_option('xyz_lnap_lnshare_to_profile');
delete_site_option('xyz_lnap_lnshare_to_profile');
delete_option('xyz_lnap_ln_share_post_company');
delete_site_option('xyz_lnap_ln_share_post_company');
delete_option('xyz_lnap_xyzscripts_user_id');
delete_site_option('xyz_lnap_xyzscripts_user_id');
delete_option('xyz_lnap_xyzscripts_hash_val');
delete_site_option('xyz_lnap_xyzscripts_hash_val');
delete_option('xyz_lnap_lnapikey');
delete_site_option('xyz_lnap_lnapikey');
delete_option('xyz_lnap_lnapisecret');
delete_site_option('xyz_lnap_lnapisecret');
delete_option('xyz_lnap_ln_api_permission');
delete_site_option('xyz_lnap_ln_api_permission');
delete_option('xyz_lnap_ln_signin_method');
delete_site_option('xyz_lnap_ln_signin_method');
delete_option('xyz_lnap_peer_verification');
delete_site_option('xyz_lnap_peer_verification');
delete_option('xyz_lnap_application_lnarray');
delete_site_option('xyz_lnap_application_lnarray');
delete_option('xyz_lnap_future_to_publish');
delete_site_option('xyz_lnap_future_to_publish');
delete_option('xyz_lnap_apply_filters');
delete_site_option('xyz_lnap_apply_filters');
delete_option('xyz_lnap_ln_shareprivate');
delete_site_option('xyz_lnap_ln_shareprivate');
delete_option('xyz_lnap_lnpost_permission');
delete_site_option('xyz_lnap_lnpost_permission');
delete_option('xyz_lnap_lnmessage');
delete_site_option('xyz_lnap_lnmessage');
delete_option('xyz_lnap_free_version');
delete_site_option('xyz_lnap_free_version');
delete_option('xyz_lnap_include_pages');
delete_site_option('xyz_lnap_include_pages');
delete_option('xyz_lnap_include_posts');
delete_site_option('xyz_lnap_include_posts');
delete_option('xyz_lnap_include_categories');
delete_site_option('xyz_lnap_include_categories');
delete_option('xyz_lnap_include_customposttypes');
delete_site_option('xyz_lnap_include_customposttypes');
delete_option('xyz_lnap_post_logs');
delete_site_option('xyz_lnap_post_logs');
delete_option('xyz_lnap_premium_version_ads');
delete_site_option('xyz_lnap_premium_version_ads');
delete_option('xyz_lnap_default_selection_edit');
delete_site_option('xyz_lnap_default_selection_edit');
delete_option('xyz_lnap_default_selection_create');
delete_site_option('xyz_lnap_default_selection_create');
delete_option('xyz_lnap_lnpost_method');
delete_site_option('xyz_lnap_lnpost_method');
delete_option('xyz_lnap_enforce_og_tags');
delete_site_option('xyz_lnap_enforce_og_tags');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'xyz_lnap_insert_og' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'xyz_lnap_insert_og' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'xyz_lnap_insert_og' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'xyz_lnap_insert_og' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'xyz_lnap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'xyz_lnap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'xyz_lnap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'xyz_lnap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'xyz_lnap_future_to_publish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'xyz_lnap_future_to_publish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'xyz_lnap_future_to_publish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'xyz_lnap_future_to_publish' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'xyz_lnap_notice_dismissed_linkedin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'xyz_lnap_notice_dismissed_linkedin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'xyz_lnap_notice_dismissed_linkedin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'xyz_lnap_notice_dismissed_linkedin' ) );

