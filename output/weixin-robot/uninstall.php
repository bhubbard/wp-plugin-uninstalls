<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpjam_net_domain_check_56');
delete_site_option('wpjam_net_domain_check_56');
delete_option('weixin-custom-menus');
delete_site_option('weixin-custom-menus');
delete_option('weixin-robot-extends');
delete_site_option('weixin-robot-extends');
delete_option('weixin_api_access_tokens');
delete_site_option('weixin_api_access_tokens');
delete_option('weixin-robot');
delete_site_option('weixin-robot');

// Delete Transients
delete_transient('weixin_kf_list');
delete_site_transient('weixin_kf_list');
delete_transient('weixin_online_kf_list');
delete_site_transient('weixin_online_kf_list');
delete_transient('weixin_access_token');
delete_site_transient('weixin_access_token');
delete_transient('weixin_access_token_expires');
delete_site_transient('weixin_access_token_expires');
delete_transient('weixin_clear_quota');
delete_site_transient('weixin_clear_quota');
delete_transient('ip_list');
delete_site_transient('ip_list');
delete_transient('weixin_js_api_ticket');
delete_site_transient('weixin_js_api_ticket');
delete_transient('weixin_js_api_ticket_expires');
delete_site_transient('weixin_js_api_ticket_expires');
delete_transient('weixin_wx_card_ticket');
delete_site_transient('weixin_wx_card_ticket');
delete_transient('weixin_wx_card_ticket_expires');
delete_site_transient('weixin_wx_card_ticket_expires');
delete_transient('weixin_material_count');
delete_site_transient('weixin_material_count');
delete_transient('weixin_builtin_replies');
delete_site_transient('weixin_builtin_replies');
delete_transient('weixin_builtin_replies_new');
delete_site_transient('weixin_builtin_replies_new');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_weixin_custom_keywords_%', '_site_transient_weixin_custom_keywords_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('weixin_send_future_mass_message');
wp_clear_scheduled_hook('weixin_delete_messages');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'weixin_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'weixin_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'weixin_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'weixin_url' ) );

