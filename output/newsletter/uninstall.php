<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('newsletter_show_welcome');
delete_site_option('newsletter_show_welcome');
delete_option('newsletter_addons_updated');
delete_site_option('newsletter_addons_updated');
delete_option('newsletter_addons');
delete_site_option('newsletter_addons');
delete_option('newsletter_news_updated');
delete_site_option('newsletter_news_updated');
delete_option('newsletter_news');
delete_site_option('newsletter_news');
delete_option('newsletter_news_dismissed');
delete_site_option('newsletter_news_dismissed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('newsletter_diagnostic_send_calls');
delete_site_option('newsletter_diagnostic_send_calls');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_last_run' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_import_last' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('newsletter_main');
delete_site_option('newsletter_main');
delete_option('newsletter_profile');
delete_site_option('newsletter_profile');
delete_option('newsletter_emails');
delete_site_option('newsletter_emails');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_emails_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('newsletter_dismissed');
delete_site_option('newsletter_dismissed');
delete_option('newsletter_public_page_check');
delete_site_option('newsletter_public_page_check');
delete_option('newsletter_install_time');
delete_site_option('newsletter_install_time');
delete_option('wp_crontrol_paused');
delete_site_option('wp_crontrol_paused');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_log_level' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('newsletter_diagnostic_cron_calls');
delete_site_option('newsletter_diagnostic_cron_calls');
delete_option('newsletter_log_level');
delete_site_option('newsletter_log_level');
delete_option('newsletter_logger_secret');
delete_site_option('newsletter_logger_secret');
delete_option('newsletter_version');
delete_site_option('newsletter_version');
delete_option('newsletter_main_version');
delete_site_option('newsletter_main_version');
delete_option('newsletter_system_warnings');
delete_site_option('newsletter_system_warnings');
delete_option('newsletter_promotion');
delete_site_option('newsletter_promotion');
delete_option('newsletter_main_status');
delete_site_option('newsletter_main_status');
delete_option('newsletter_statistics_available_version');
delete_site_option('newsletter_statistics_available_version');
delete_option('newsletter_statistics_secret');
delete_site_option('newsletter_statistics_secret');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_backup_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('newsletter_statistics');
delete_site_option('newsletter_statistics');
delete_option('newsletter_subscription');
delete_site_option('newsletter_subscription');
delete_option('newsletter_htmlforms');
delete_site_option('newsletter_htmlforms');
delete_option('newsletter_antispam');
delete_site_option('newsletter_antispam');
delete_option('newsletter_form');
delete_site_option('newsletter_form');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_form_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('newsletter_customfields');
delete_site_option('newsletter_customfields');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_profile_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_customfields_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_profile_main_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_subscription_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('newsletter_info');
delete_site_option('newsletter_info');
delete_option('newsletter_lists');
delete_site_option('newsletter_lists');
delete_option('newsletter_subscription_lists');
delete_site_option('newsletter_subscription_lists');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_lists_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_subscription_lists_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('newsletter_template');
delete_site_option('newsletter_template');
delete_option('newsletter_subscription_template');
delete_site_option('newsletter_subscription_template');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_template_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_subscription_template_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('newsletter_system_status');
delete_site_option('newsletter_system_status');
delete_option('newsletter');
delete_site_option('newsletter');
delete_option('newsletter_profile_main');
delete_site_option('newsletter_profile_main');
delete_option('newsletter_main_info');
delete_site_option('newsletter_main_info');
delete_option('newsletter_subscription_antibot');
delete_site_option('newsletter_subscription_antibot');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_system_status_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_main_info_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_subscription_antibot_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_subscription_customfields_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_subscription_form_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_info_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_system_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_users_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_main_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_statistics_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('newsletter_main_smtp');
delete_site_option('newsletter_main_smtp');
delete_option('newsletter_subscription_version');
delete_site_option('newsletter_subscription_version');
delete_option('newsletter_subscription_first_install_time');
delete_site_option('newsletter_subscription_first_install_time');
delete_option('newsletter_unsubscription_version');
delete_site_option('newsletter_unsubscription_version');
delete_option('newsletter_unsubscription_first_install_time');
delete_site_option('newsletter_unsubscription_first_install_time');
delete_option('newsletter_users_version');
delete_site_option('newsletter_users_version');
delete_option('newsletter_users_first_install_time');
delete_site_option('newsletter_users_first_install_time');
delete_option('newsletter_profile_version');
delete_site_option('newsletter_profile_version');
delete_option('newsletter_profile_first_install_time');
delete_site_option('newsletter_profile_first_install_time');
delete_option('newsletter_emails_version');
delete_site_option('newsletter_emails_version');
delete_option('newsletter_emails_first_install_time');
delete_site_option('newsletter_emails_first_install_time');
delete_option('newsletter_system_version');
delete_site_option('newsletter_system_version');
delete_option('newsletter_system_first_install_time');
delete_site_option('newsletter_system_first_install_time');
delete_option('newsletter_main_first_install_time');
delete_site_option('newsletter_main_first_install_time');
delete_option('newsletter_statistics_version');
delete_site_option('newsletter_statistics_version');
delete_option('newsletter_statistics_first_install_time');
delete_site_option('newsletter_statistics_first_install_time');
delete_option('newsletter_wp');
delete_site_option('newsletter_wp');
delete_option('newsletter_main_steps');
delete_site_option('newsletter_main_steps');
delete_option('newsletter_lock_engine');
delete_site_option('newsletter_lock_engine');
delete_option('newsletter_stats_email_column_upgraded');
delete_site_option('newsletter_stats_email_column_upgraded');

// Delete Transients
delete_transient('newsletter_topbar');
delete_site_transient('newsletter_topbar');
delete_transient('newsletter_license_data');
delete_site_transient('newsletter_license_data');
delete_transient('newsletter_user_count');
delete_site_transient('newsletter_user_count');
delete_transient('tnp_extensions_json');
delete_site_transient('tnp_extensions_json');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_email', '_site_transient_%_email' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_newsletter_subscription_%', '_site_transient_newsletter_subscription_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('doing_cron');
delete_site_transient('doing_cron');
delete_transient('newsletter_transient_test');
delete_site_transient('newsletter_transient_test');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('newsletter');
wp_clear_scheduled_hook('newsletter_clean');
wp_clear_scheduled_hook('newsletter_update');

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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );

