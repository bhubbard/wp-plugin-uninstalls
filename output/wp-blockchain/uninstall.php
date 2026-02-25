<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpbc_provider_btc_username');
delete_site_option('wpbc_provider_btc_username');
delete_option('wpbc_provider_btc_password');
delete_site_option('wpbc_provider_btc_password');
delete_option('wpbc_provider');
delete_site_option('wpbc_provider');
delete_option('wpbc_last_cron');
delete_site_option('wpbc_last_cron');
delete_option('wpbc_block_cron');
delete_site_option('wpbc_block_cron');
delete_option('wpbc_cron_key');
delete_site_option('wpbc_cron_key');
delete_option('wpbc_allow_poorman');
delete_site_option('wpbc_allow_poorman');
delete_option('wpbc_settings_saved');
delete_site_option('wpbc_settings_saved');
delete_option('wpbc_has_fontawesome');
delete_site_option('wpbc_has_fontawesome');
delete_option('wpbc_donate_btc');
delete_site_option('wpbc_donate_btc');
delete_option('wpbc_visible_states');
delete_site_option('wpbc_visible_states');
delete_option('wpbc_visible_only_admins');
delete_site_option('wpbc_visible_only_admins');
delete_option('wpbc_blockchains');
delete_site_option('wpbc_blockchains');
delete_option('wpbc_domain_calls');
delete_site_option('wpbc_domain_calls');
delete_option('wpbc_schema_version');
delete_site_option('wpbc_schema_version');
delete_option('wpbc_provider_username');
delete_site_option('wpbc_provider_username');
delete_option('wpbc_post_types');
delete_site_option('wpbc_post_types');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpbc_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpbc_provider_ok_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpbc_provider_check');
delete_site_option('wpbc_provider_check');
delete_option('wpbc_provider_password');
delete_site_option('wpbc_provider_password');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpbc_provider_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_username' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_password' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpbc_intro');
delete_site_option('wpbc_intro');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%username' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%password' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpbc_restamps');
delete_site_option('wpbc_restamps');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpbc_get_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wpbc_cron_add_every_minute');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpbc_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpbc_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpbc_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpbc_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wpbc_stamp_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wpbc_stamp_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wpbc_stamp_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wpbc_stamp_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wpbc_stamp_history_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wpbc_stamp_history_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wpbc_stamp_history_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wpbc_stamp_history_%' ) );

