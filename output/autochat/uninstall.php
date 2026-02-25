<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('achat_brand_color');
delete_site_option('achat_brand_color');
delete_option('achat_seondary_color');
delete_site_option('achat_seondary_color');
delete_option('achat_text_color');
delete_site_option('achat_text_color');
delete_option('far_plugin_settings');
delete_site_option('far_plugin_settings');
delete_option('ch_def_reply_option');
delete_site_option('ch_def_reply_option');
delete_option('achat_greetings_option');
delete_site_option('achat_greetings_option');
delete_option('ch_greeting_option');
delete_site_option('ch_greeting_option');
delete_option('achat_default_reply_option');
delete_site_option('achat_default_reply_option');
delete_option('tawk_to_script');
delete_site_option('tawk_to_script');
delete_option('ch_brnd_name_option');
delete_site_option('ch_brnd_name_option');
delete_option('ac_icon_image_option');
delete_site_option('ac_icon_image_option');
delete_option('enable_chat_feature');
delete_site_option('enable_chat_feature');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'xxxx_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'xxxx_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'xxxx_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'xxxx_image' ) );

