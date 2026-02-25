<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('w3all_url_to_cms');
delete_site_option('w3all_url_to_cms');
delete_option('w3all_phpbb_dbconn');
delete_site_option('w3all_phpbb_dbconn');
delete_option('w3all_path_to_cms');
delete_site_option('w3all_path_to_cms');
delete_option('w3all_pass_hash_way');
delete_site_option('w3all_pass_hash_way');
delete_option('w3all_not_link_phpbb_wp');
delete_site_option('w3all_not_link_phpbb_wp');
delete_option('w3all_conf_avatars');
delete_site_option('w3all_conf_avatars');
delete_option('w3all_conf_pref');
delete_site_option('w3all_conf_pref');
delete_option('w3all_conf_pref_template_embed_link');
delete_site_option('w3all_conf_pref_template_embed_link');
delete_option('w3all_bruteblock_phpbbulist');
delete_site_option('w3all_bruteblock_phpbbulist');
delete_option('w3all_forum_template_wppage');
delete_site_option('w3all_forum_template_wppage');
delete_option('w3all_phpbb_cookie');
delete_site_option('w3all_phpbb_cookie');
delete_option('widget_wp_w3all_widget_login');
delete_site_option('widget_wp_w3all_widget_login');
delete_option('widget_wp_w3all_widget_last_topics');
delete_site_option('widget_wp_w3all_widget_last_topics');
delete_option('widget_wp_w3all_widget_phpbb_onlinestats');
delete_site_option('widget_wp_w3all_widget_phpbb_onlinestats');
delete_option('w3all_exclude_id1');
delete_site_option('w3all_exclude_id1');
delete_option('w3all_iframe_phpbb_link_yn');
delete_site_option('w3all_iframe_phpbb_link_yn');
delete_option('w3all_u_signups_data');
delete_site_option('w3all_u_signups_data');
delete_option('widget_wp_w3all_widget_phpbb_mchat');
delete_site_option('widget_wp_w3all_widget_phpbb_mchat');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'w3all_wpdelete_phpbbulist_delby' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'w3all_wpdelete_phpbbulist_delby' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'w3all_wpdelete_phpbbulist_delby' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'w3all_wpdelete_phpbbulist_delby' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_new_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_new_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_new_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_new_email' ) );

