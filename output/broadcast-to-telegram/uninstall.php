<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brtg_post_type');
delete_site_option('brtg_post_type');
delete_option('brtg_bot_token');
delete_site_option('brtg_bot_token');
delete_option('brtg_telegram_channels');
delete_site_option('brtg_telegram_channels');
delete_option('brtg_msg_web_preview');
delete_site_option('brtg_msg_web_preview');
delete_option('brtg_msg_tpl');
delete_site_option('brtg_msg_tpl');
delete_option('brtg_auto_send');
delete_site_option('brtg_auto_send');
delete_option('brtg_delete_options');
delete_site_option('brtg_delete_options');
delete_option('brtg_author');
delete_site_option('brtg_author');
delete_option('auto_send');
delete_site_option('auto_send');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_brtg_targetSent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_brtg_targetSent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_brtg_targetSent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_brtg_targetSent' ) );

