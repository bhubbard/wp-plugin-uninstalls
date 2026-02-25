<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vitor_enable_realtime');
delete_site_option('vitor_enable_realtime');
delete_option('vitor_custom_blocklist_enabled');
delete_site_option('vitor_custom_blocklist_enabled');
delete_option('vitor_block_comments');
delete_site_option('vitor_block_comments');
delete_option('vitor_block_trackbacks');
delete_site_option('vitor_block_trackbacks');
delete_option('vitor_hide_commentform');
delete_site_option('vitor_hide_commentform');
delete_option('vitor_block_registration');
delete_site_option('vitor_block_registration');
delete_option('vitor_flag_registration');
delete_site_option('vitor_flag_registration');
delete_option('vitor_block_login');
delete_site_option('vitor_block_login');
delete_option('vitor_cloudflare_enabled');
delete_site_option('vitor_cloudflare_enabled');
delete_option('vitor_block_everything');
delete_site_option('vitor_block_everything');
delete_option('vitor_exit_list_last_updated');
delete_site_option('vitor_exit_list_last_updated');
delete_option('vitor_el_update_frequency');
delete_site_option('vitor_el_update_frequency');
delete_option('vitor_stat_blockedviews');
delete_site_option('vitor_stat_blockedviews');
delete_option('vitor_blocked_page');
delete_site_option('vitor_blocked_page');
delete_option('vitor_custom_block_message');
delete_site_option('vitor_custom_block_message');
delete_option('vitor_tor_blocked_message');
delete_site_option('vitor_tor_blocked_message');
delete_option('vitor_stat_trackbacks');
delete_site_option('vitor_stat_trackbacks');
delete_option('vitor_stat_comments');
delete_site_option('vitor_stat_comments');
delete_option('vitor_stat_registration');
delete_site_option('vitor_stat_registration');
delete_option('vitor_stat_login');
delete_site_option('vitor_stat_login');
delete_option('vitor_realtime_timeout');
delete_site_option('vitor_realtime_timeout');
delete_option('vitor_use_captcha');
delete_site_option('vitor_use_captcha');
delete_option('vitor_use_hcaptcha');
delete_site_option('vitor_use_hcaptcha');
delete_option('vitor_custom_blocklist');
delete_site_option('vitor_custom_blocklist');
delete_option('vitor_last_update_failure');
delete_site_option('vitor_last_update_failure');
delete_option('vitor_exit_list');
delete_site_option('vitor_exit_list');
delete_option('hcaptcha_settings');
delete_site_option('hcaptcha_settings');
delete_option('hcaptcha_secret_key');
delete_site_option('hcaptcha_secret_key');

// Delete Transients
delete_transient('vitor_list_updating');
delete_site_transient('vitor_list_updating');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vitor_token:%', '_site_transient_vitor_token:%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('vitor_update_lists');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vitor_flagged_registration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vitor_flagged_registration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vitor_flagged_registration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vitor_flagged_registration' ) );

