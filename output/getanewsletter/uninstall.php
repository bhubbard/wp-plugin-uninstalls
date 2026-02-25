<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('newsletter_user');
delete_site_option('newsletter_user');
delete_option('newsletter_pass');
delete_site_option('newsletter_pass');
delete_option('newsletter_apikey');
delete_site_option('newsletter_apikey');
delete_option('newsletter_msg_success');
delete_site_option('newsletter_msg_success');
delete_option('newsletter_msg_confirm');
delete_site_option('newsletter_msg_confirm');
delete_option('gan_enable_popup_forms');
delete_site_option('gan_enable_popup_forms');
delete_option('gan_user_hash');
delete_site_option('gan_user_hash');
delete_option('newsletter_plugin_version');
delete_site_option('newsletter_plugin_version');
delete_option('newsletter_default_verify_mail_subject');
delete_site_option('newsletter_default_verify_mail_subject');
delete_option('newsletter_default_verify_mail_text');
delete_site_option('newsletter_default_verify_mail_text');
delete_option('widget_getanewsletter');
delete_site_option('widget_getanewsletter');
delete_option('gan_redirect_after_activation');
delete_site_option('gan_redirect_after_activation');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_gan_auth_failed_%', '_site_transient_gan_auth_failed_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_gan_auth_email_sent_%', '_site_transient_gan_auth_email_sent_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('newsletter_flash_message');
delete_site_transient('newsletter_flash_message');

