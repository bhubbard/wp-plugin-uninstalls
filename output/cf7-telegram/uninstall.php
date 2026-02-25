<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcf7_telegram_chats');
delete_site_option('wpcf7_telegram_chats');
delete_option('wpcf7_telegram_pre_releases');
delete_site_option('wpcf7_telegram_pre_releases');
delete_option('wpcf7_telegram_tkn');
delete_site_option('wpcf7_telegram_tkn');
delete_option('wpcf7_telegram_last_update_id');
delete_site_option('wpcf7_telegram_last_update_id');
delete_option('cf7tg_version');
delete_site_option('cf7tg_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cf7tg_migration_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

