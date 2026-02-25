<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('loginizer_provider_settings');
delete_site_option('loginizer_provider_settings');
delete_option('loginizer_social_order');
delete_site_option('loginizer_social_order');
delete_option('loginizer_version');
delete_site_option('loginizer_version');
delete_option('loginizer_options');
delete_site_option('loginizer_options');
delete_option('loginizer_last_reset');
delete_site_option('loginizer_last_reset');
delete_option('loginizer_whitelist');
delete_site_option('loginizer_whitelist');
delete_option('loginizer_blacklist');
delete_site_option('loginizer_blacklist');
delete_option('loginizer_2fa_whitelist');
delete_site_option('loginizer_2fa_whitelist');
delete_option('loginizer_softwp_upgrade');
delete_site_option('loginizer_softwp_upgrade');
delete_option('lz_version');
delete_site_option('lz_version');
delete_option('loginizer_social_settings');
delete_site_option('loginizer_social_settings');
delete_option('loginizer_captcha');
delete_site_option('loginizer_captcha');
delete_option('loginizer_ip_method');
delete_site_option('loginizer_ip_method');
delete_option('loginizer_custom_ip_method');
delete_site_option('loginizer_custom_ip_method');
delete_option('loginizer_login_mail');
delete_site_option('loginizer_login_mail');
delete_option('loginizer_ins_time');
delete_site_option('loginizer_ins_time');
delete_option('loginizer_disable_brute');
delete_site_option('loginizer_disable_brute');
delete_option('site_name');
delete_site_option('site_name');
delete_option('loginizer_login_attempt_stats');
delete_site_option('loginizer_login_attempt_stats');
delete_option('loginizer_msg');
delete_site_option('loginizer_msg');
delete_option('loginizer_2fa_msg');
delete_site_option('loginizer_2fa_msg');
delete_option('loginizer_2fa_email_template');
delete_site_option('loginizer_2fa_email_template');
delete_option('loginizer_security');
delete_site_option('loginizer_security');
delete_option('loginizer_wp_admin');
delete_site_option('loginizer_wp_admin');
delete_option('loginizer_csrf_promo_time');
delete_site_option('loginizer_csrf_promo_time');
delete_option('loginizer_backuply_promo_time');
delete_site_option('loginizer_backuply_promo_time');
delete_option('loginizer_promo_time');
delete_site_option('loginizer_promo_time');
delete_option('loginizer_checksums_last_run');
delete_site_option('loginizer_checksums_last_run');
delete_option('loginizer_checksums_diff');
delete_site_option('loginizer_checksums_diff');
delete_option('loginizer_2fa_custom_redirect');
delete_site_option('loginizer_2fa_custom_redirect');
delete_option('external_updates-loginizer-security');
delete_site_option('external_updates-loginizer-security');
delete_option('loginizer_pro_version');
delete_site_option('loginizer_pro_version');
delete_option('softaculous_plugin_update_notice');
delete_site_option('softaculous_plugin_update_notice');
delete_option('loginizer_license_notice');
delete_site_option('loginizer_license_notice');
delete_option('loginizer_license');
delete_site_option('loginizer_license');
delete_option('loginizer_dismiss_newsletter');
delete_site_option('loginizer_dismiss_newsletter');
delete_option('loginizer_social_login_url');
delete_site_option('loginizer_social_login_url');
delete_option('loginizer_2fa');
delete_site_option('loginizer_2fa');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'loginizer_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('loginizer_checksums_ignore');
delete_site_option('loginizer_checksums_ignore');
delete_option('loginizer_checksums');
delete_site_option('loginizer_checksums');
delete_option('loginizer_no_announcement');
delete_site_option('loginizer_no_announcement');
delete_option('loginizer_epl');
delete_site_option('loginizer_epl');
delete_option('site_admins');
delete_site_option('site_admins');
delete_option('loginizer_username_blacklist');
delete_site_option('loginizer_username_blacklist');
delete_option('loginizer_domains_blacklist');
delete_site_option('loginizer_domains_blacklist');
delete_option('loginizer_csrf_protection');
delete_site_option('loginizer_csrf_protection');
delete_option('loginizer_limit_session');
delete_site_option('loginizer_limit_session');
delete_option('loginizer_sso_links');
delete_site_option('loginizer_sso_links');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('loginizer_csrf_mod_rewrite');
delete_site_transient('loginizer_csrf_mod_rewrite');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'loginizer_user_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'loginizer_user_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'loginizer_user_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'loginizer_user_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'loginizer_sso_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'loginizer_sso_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'loginizer_sso_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'loginizer_sso_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_expires' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_expires' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_expires' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_expires' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_attempts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_attempts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_attempts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_attempts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'loginizer_avatar_download' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'loginizer_avatar_download' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'loginizer_avatar_download' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'loginizer_avatar_download' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_wp_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_wp_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_wp_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_wp_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%lz_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%lz_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%lz_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%lz_avatar' ) );

