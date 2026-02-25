<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_cb_height');
delete_site_option('fs_cb_height');
delete_option('fs_position');
delete_site_option('fs_position');
delete_option('fs_active_fs_hit_column');
delete_site_option('fs_active_fs_hit_column');
delete_option('fs_skip_single');
delete_site_option('fs_skip_single');
delete_option('fs_single_posts');
delete_site_option('fs_single_posts');
delete_option('fs_single_pages');
delete_site_option('fs_single_pages');
delete_option('fs_home');
delete_site_option('fs_home');
delete_option('fs_search');
delete_site_option('fs_search');
delete_option('fs_archive');
delete_site_option('fs_archive');
delete_option('fs_active_align');
delete_site_option('fs_active_align');
delete_option('fs_design');
delete_site_option('fs_design');
delete_option('fs_active_counter');
delete_site_option('fs_active_counter');
delete_option('fs_active_flatmix');
delete_site_option('fs_active_flatmix');
delete_option('fs_active_big');
delete_site_option('fs_active_big');
delete_option('fs_intro_height');
delete_site_option('fs_intro_height');
delete_option('fs_intro_text');
delete_site_option('fs_intro_text');
delete_option('fs_facebook_share');
delete_site_option('fs_facebook_share');
delete_option('fs_twitter_share');
delete_site_option('fs_twitter_share');
delete_option('fs_flattr_share');
delete_site_option('fs_flattr_share');
delete_option('fs_digg_share');
delete_site_option('fs_digg_share');
delete_option('fs_delicious_share');
delete_site_option('fs_delicious_share');
delete_option('fs_gplus_share');
delete_site_option('fs_gplus_share');
delete_option('fs_xing_share');
delete_site_option('fs_xing_share');
delete_option('fs_linkedin_share');
delete_site_option('fs_linkedin_share');
delete_option('fs_pinterest_share');
delete_site_option('fs_pinterest_share');
delete_option('fs_stumbleupon_share');
delete_site_option('fs_stumbleupon_share');
delete_option('fs_tumblr_share');
delete_site_option('fs_tumblr_share');
delete_option('fs_whatsapp_share');
delete_site_option('fs_whatsapp_share');
delete_option('fs_pocket_share');
delete_site_option('fs_pocket_share');
delete_option('fs_feedly_share');
delete_site_option('fs_feedly_share');
delete_option('fs_active_sharebar');
delete_site_option('fs_active_sharebar');
delete_option('fs_active_post_stats');
delete_site_option('fs_active_post_stats');
delete_option('fs_active_privacy');
delete_site_option('fs_active_privacy');
delete_option('fs_deactivate_supportlink');
delete_site_option('fs_deactivate_supportlink');
delete_option('fs_privacy_text');
delete_site_option('fs_privacy_text');
delete_option('fs_privacy_link_intro');
delete_site_option('fs_privacy_link_intro');
delete_option('fs_twitter_text');
delete_site_option('fs_twitter_text');
delete_option('fs_flattr_id');
delete_site_option('fs_flattr_id');
delete_option('altimg');
delete_site_option('altimg');
delete_option('fs_categories');
delete_site_option('fs_categories');
delete_option('fs_altimg');
delete_site_option('fs_altimg');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fs_post_views_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fs_post_views_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fs_post_views_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fs_post_views_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );

