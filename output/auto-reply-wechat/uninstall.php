<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wechatreplay_wzt_token1');
delete_site_option('wechatreplay_wzt_token1');
delete_option('wechatreplay_wzt_token2');
delete_site_option('wechatreplay_wzt_token2');
delete_option('wechatreplay_wzt_token3');
delete_site_option('wechatreplay_wzt_token3');
delete_option('wechat_replay');
delete_site_option('wechat_replay');
delete_option('wechat_replay_qrcode');
delete_site_option('wechat_replay_qrcode');
delete_option('WechatReplay_captcha');
delete_site_option('WechatReplay_captcha');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'WechatReplay_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('WechatReplay_login');
delete_site_option('WechatReplay_login');
delete_option('WechatReplay_access_token');
delete_site_option('WechatReplay_access_token');
delete_option('WechatReplay_art_tongbu');
delete_site_option('WechatReplay_art_tongbu');
delete_option('WechatReplay_tongbu_num');
delete_site_option('WechatReplay_tongbu_num');
delete_option('wechat_replay_share');
delete_site_option('wechat_replay_share');
delete_option('wechatreplay_tongji');
delete_site_option('wechatreplay_tongji');
delete_option('wechatreplay_level');
delete_site_option('wechatreplay_level');
delete_option('WechatReplay_log');
delete_site_option('WechatReplay_log');
delete_option('wechatreplay_shouquan');
delete_site_option('wechatreplay_shouquan');
delete_option('WechatReplay_wzt_token1');
delete_site_option('WechatReplay_wzt_token1');
delete_option('WechatReplay_wzt_token2');
delete_site_option('WechatReplay_wzt_token2');
delete_option('WechatReplay_wzt_token3');
delete_site_option('WechatReplay_wzt_token3');

// Clear Cron Jobs
wp_clear_scheduled_hook('wechatreplay_cronhook1');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wechatreplay_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wechatreplay_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wechatreplay_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wechatreplay_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wechatreplay_openid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wechatreplay_openid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wechatreplay_openid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wechatreplay_openid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wechatreplay_article' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wechatreplay_article' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wechatreplay_article' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wechatreplay_article' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'WechatReplay_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'WechatReplay_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'WechatReplay_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'WechatReplay_content' ) );

