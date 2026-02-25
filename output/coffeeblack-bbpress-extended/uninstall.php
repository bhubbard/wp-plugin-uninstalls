<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cb_bbpress_vis_editor');
delete_site_option('cb_bbpress_vis_editor');
delete_option('cb_bbpress_forum_settings');
delete_site_option('cb_bbpress_forum_settings');
delete_option('cb_bbpress_enable_shortcode');
delete_site_option('cb_bbpress_enable_shortcode');
delete_option('cb_bbpress_tinymce_bbcode_editor');
delete_site_option('cb_bbpress_tinymce_bbcode_editor');
delete_option('cb_bbpress_forum_in_search');
delete_site_option('cb_bbpress_forum_in_search');
delete_option('cb_bbpress_topic_in_search');
delete_site_option('cb_bbpress_topic_in_search');
delete_option('cb_bbpress_reply_in_search');
delete_site_option('cb_bbpress_reply_in_search');
delete_option('cb_bbpress_new_topic_link');
delete_site_option('cb_bbpress_new_topic_link');
delete_option('cb_bbpress_load_content_single_topic_template');
delete_site_option('cb_bbpress_load_content_single_topic_template');
delete_option('cb_bbpress_bbcode_enabled');
delete_site_option('cb_bbpress_bbcode_enabled');
delete_option('cb_bbpress_quote_enabled');
delete_site_option('cb_bbpress_quote_enabled');
delete_option('cb_bbpress_set_tinymce_default');
delete_site_option('cb_bbpress_set_tinymce_default');
delete_option('cb_bbpress_replace_bbpress_signature_with_xprofile_field');
delete_site_option('cb_bbpress_replace_bbpress_signature_with_xprofile_field');
delete_option('cb_bbpress_show_username');
delete_site_option('cb_bbpress_show_username');
delete_option('cb_bbpress_login_url_option');
delete_site_option('cb_bbpress_login_url_option');
delete_option('cb_bbpress_login_url');
delete_site_option('cb_bbpress_login_url');
delete_option('cb_bbpress_login_url_custom');
delete_site_option('cb_bbpress_login_url_custom');
delete_option('cb_bbpress_logout_url_option');
delete_site_option('cb_bbpress_logout_url_option');
delete_option('cb_bbpress_logout_url');
delete_site_option('cb_bbpress_logout_url');
delete_option('cb_bbpress_logout_url_custom');
delete_site_option('cb_bbpress_logout_url_custom');
delete_option('cb_bbpress_version');
delete_site_option('cb_bbpress_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bbp_anonymous_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bbp_anonymous_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bbp_anonymous_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bbp_anonymous_name' ) );

