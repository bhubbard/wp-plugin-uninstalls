<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('conwr_email');
delete_site_option('conwr_email');
delete_option('conwr_api_key');
delete_site_option('conwr_api_key');
delete_option('conwr_edited_post_id');
delete_site_option('conwr_edited_post_id');
delete_option('conwr_verified');
delete_site_option('conwr_verified');
delete_option('conwr_admin_message');
delete_site_option('conwr_admin_message');
delete_option('conwr_adjust_every');
delete_site_option('conwr_adjust_every');
delete_option('conwr_best_feed');
delete_site_option('conwr_best_feed');
delete_option('conwr_hide_body');
delete_site_option('conwr_hide_body');
delete_option('conwr_ignore_users');
delete_site_option('conwr_ignore_users');
delete_option('conwr_search_engines');
delete_site_option('conwr_search_engines');
delete_option('conwr_skip_pages');
delete_site_option('conwr_skip_pages');
delete_option('conwr_use_js');
delete_site_option('conwr_use_js');
delete_option('stcon_api_key');
delete_site_option('stcon_api_key');
delete_option('stcon_email');
delete_site_option('stcon_email');
delete_option('scmtt_adjust_every');
delete_site_option('scmtt_adjust_every');
delete_option('scmtt_best_feed');
delete_site_option('scmtt_best_feed');
delete_option('scmtt_hide_body');
delete_site_option('scmtt_hide_body');
delete_option('scmtt_ignore_users');
delete_site_option('scmtt_ignore_users');
delete_option('scmtt_search_engines');
delete_site_option('scmtt_search_engines');
delete_option('scmtt_skip_pages');
delete_site_option('scmtt_skip_pages');
delete_option('scmtt_use_js');
delete_site_option('scmtt_use_js');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'steady_content_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'steady_content_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'steady_content_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'steady_content_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_conwr_fi_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_conwr_fi_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_conwr_fi_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_conwr_fi_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_conwr_fi_href' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_conwr_fi_href' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_conwr_fi_href' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_conwr_fi_href' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_conwr_fi_target' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_conwr_fi_target' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_conwr_fi_target' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_conwr_fi_target' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_conwr_sc_post_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_conwr_sc_post_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_conwr_sc_post_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_conwr_sc_post_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_conwr_is_preview' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_conwr_is_preview' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_conwr_is_preview' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_conwr_is_preview' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );

