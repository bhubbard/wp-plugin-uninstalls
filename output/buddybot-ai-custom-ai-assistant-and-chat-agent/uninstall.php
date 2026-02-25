<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buddybot_welcome_modal_dismissed');
delete_site_option('buddybot_welcome_modal_dismissed');
delete_option('buddybot_columns_per_page');
delete_site_option('buddybot_columns_per_page');
delete_option('buddybot_conversations_per_page');
delete_site_option('buddybot_conversations_per_page');
delete_option('buddybot_vectorstore_data');
delete_site_option('buddybot_vectorstore_data');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-remote-file-id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('buddybot_db_version');
delete_site_option('buddybot_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('buddybot_delete_expired_chats');

