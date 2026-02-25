<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('frm_connect_token');
delete_site_option('frm_connect_token');
delete_option('frm_install_running');
delete_site_option('frm_install_running');
delete_option('frmpro-credentials');
delete_site_option('frmpro-credentials');
delete_option('frmpro-authorized');
delete_site_option('frmpro-authorized');
delete_option('frm_db_version');
delete_site_option('frm_db_version');
delete_option('frm_feedback_expired');
delete_site_option('frm_feedback_expired');
delete_option('frm_lite_settings_upgrade');
delete_site_option('frm_lite_settings_upgrade');
delete_option('frm_last_style_update');
delete_site_option('frm_last_style_update');
delete_option('frm_first_activation');
delete_site_option('frm_first_activation');
delete_option('frm_dismissed');
delete_site_option('frm_dismissed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%active' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%last_activate' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('frm_last_cleared');
delete_site_option('frm_last_cleared');
delete_option('frm_antispam_secret_key');
delete_site_option('frm_antispam_secret_key');
delete_option('ftp_credentials');
delete_site_option('ftp_credentials');
delete_option('wordpress_api_key');
delete_site_option('wordpress_api_key');
delete_option('frm_form_state_key');
delete_site_option('frm_form_state_key');
delete_option('frm_honeypot_class');
delete_site_option('frm_honeypot_class');
delete_option('frm_inbox');
delete_site_option('frm_inbox');
delete_option('wp_mail_smtp_activation_prevent_redirect');
delete_site_option('wp_mail_smtp_activation_prevent_redirect');
delete_option('frm_options');
delete_site_option('frm_options');
delete_option('frm-usage-uuid');
delete_site_option('frm-usage-uuid');
delete_option('frmpro_css');
delete_site_option('frmpro_css');
delete_option('widget_frm_show_form');
delete_site_option('widget_frm_show_form');
delete_option('frm_sale_ab_group');
delete_site_option('frm_sale_ab_group');
delete_option('frm_admin_menu_name');
delete_site_option('frm_admin_menu_name');
delete_option('recaptcha');
delete_site_option('recaptcha');
delete_option('disallowed_keys');
delete_site_option('disallowed_keys');
delete_option('frm_square_lite_last_verify_attempt');
delete_site_option('frm_square_lite_last_verify_attempt');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('frm_stripe_lite_last_verify_attempt');
delete_site_option('frm_stripe_lite_last_verify_attempt');

// Delete Transients
delete_transient('frm_updating_api');
delete_site_transient('frm_updating_api');
delete_transient('frmpro_css');
delete_site_transient('frmpro_css');
delete_transient('frm_api_licence');
delete_site_transient('frm_api_licence');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%excludeinclude', '_site_transient_%excludeinclude' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%includeinclude', '_site_transient_%includeinclude' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%includeexclude', '_site_transient_%includeexclude' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%excludeexclude', '_site_transient_%excludeexclude' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('frm_options');
delete_site_transient('frm_options');
delete_transient('frmpro_options');
delete_site_transient('frmpro_options');
delete_transient('formidable_plugin_data');
delete_site_transient('formidable_plugin_data');
delete_transient('frm_recent_spam_detected');
delete_site_transient('frm_recent_spam_detected');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_frm_square_last_process_%', '_site_transient_frm_square_last_process_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_frm_last_process_%', '_site_transient_frm_last_process_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('formidable_send_usage');
wp_clear_scheduled_hook('frm_payment_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );

