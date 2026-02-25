<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cresta_social_shares_facebook_appid');
delete_site_option('cresta_social_shares_facebook_appid');
delete_option('cresta_social_shares_facebook_appsecret');
delete_site_option('cresta_social_shares_facebook_appsecret');
delete_option('cresta_social_shares_cache_period');
delete_site_option('cresta_social_shares_cache_period');
delete_option('cresta_social_shares_store_meta');
delete_site_option('cresta_social_shares_store_meta');
delete_option('cresta_social_shares_selected_page');
delete_site_option('cresta_social_shares_selected_page');
delete_option('cresta_social_shares_http_https_both');
delete_site_option('cresta_social_shares_http_https_both');
delete_option('cresta_social_shares_show_counter');
delete_site_option('cresta_social_shares_show_counter');
delete_option('cresta_social_shares_show_floatbutton');
delete_site_option('cresta_social_shares_show_floatbutton');
delete_option('cresta_social_shares_google_font');
delete_site_option('cresta_social_shares_google_font');
delete_option('selected_button');
delete_site_option('selected_button');
delete_option('cresta_social_shares_show_ifmorezero');
delete_site_option('cresta_social_shares_show_ifmorezero');
delete_option('cresta_social_shares_show_ifmorenumber');
delete_site_option('cresta_social_shares_show_ifmorenumber');
delete_option('cresta_social_shares_float');
delete_site_option('cresta_social_shares_float');
delete_option('cresta_social_shares_float_buttons');
delete_site_option('cresta_social_shares_float_buttons');
delete_option('cresta_social_shares_style');
delete_site_option('cresta_social_shares_style');
delete_option('cresta_social_shares_position_top');
delete_site_option('cresta_social_shares_position_top');
delete_option('cresta_social_shares_position_left');
delete_site_option('cresta_social_shares_position_left');
delete_option('cresta_social_shares_twitter_username');
delete_site_option('cresta_social_shares_twitter_username');
delete_option('cresta_social_shares_twitter_new_logo');
delete_site_option('cresta_social_shares_twitter_new_logo');
delete_option('cresta_social_shares_show_total');
delete_site_option('cresta_social_shares_show_total');
delete_option('cresta_social_shares_total_text');
delete_site_option('cresta_social_shares_total_text');
delete_option('cresta_social_shares_disable_mobile');
delete_site_option('cresta_social_shares_disable_mobile');
delete_option('cresta_social_shares_enable_animation');
delete_site_option('cresta_social_shares_enable_animation');
delete_option('cresta_social_shares_enable_samecolors');
delete_site_option('cresta_social_shares_enable_samecolors');
delete_option('cresta_social_shares_before_content');
delete_site_option('cresta_social_shares_before_content');
delete_option('cresta_social_shares_after_content');
delete_site_option('cresta_social_shares_after_content');
delete_option('cresta_social_shares_show_credit');
delete_site_option('cresta_social_shares_show_credit');
delete_option('cresta_social_shares_enable_shadow');
delete_site_option('cresta_social_shares_enable_shadow');
delete_option('cresta_social_shares_enable_shadow_buttons');
delete_site_option('cresta_social_shares_enable_shadow_buttons');
delete_option('cresta_social_shares_z_index');
delete_site_option('cresta_social_shares_z_index');
delete_option('cresta_social_shares_button_hide_show');
delete_site_option('cresta_social_shares_button_hide_show');
delete_option('cresta_social_shares_custom_css');
delete_site_option('cresta_social_shares_custom_css');
delete_option('cresta_social_shares_twitter_shares_two');
delete_site_option('cresta_social_shares_twitter_shares_two');
delete_option('cresta_social_shares_twitter_shares_three');
delete_site_option('cresta_social_shares_twitter_shares_three');
delete_option('cresta_social_shares_pintmode');
delete_site_option('cresta_social_shares_pintmode');
delete_option('cresta_social_shares_linkedin_alternative_count');
delete_site_option('cresta_social_shares_linkedin_alternative_count');
delete_option('cresta_social_shares_twitter_shares');
delete_site_option('cresta_social_shares_twitter_shares');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cresta_facebook_share_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cresta_facebook_share_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cresta_facebook_share_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cresta_facebook_share_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_get_cresta_plugin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_get_cresta_plugin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_get_cresta_plugin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_get_cresta_plugin' ) );

