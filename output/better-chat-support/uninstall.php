<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'themeatelier_offer_banner_dismissed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('better_chat_support_version');
delete_site_option('better_chat_support_version');
delete_option('better_chat_support_first_version');
delete_site_option('better_chat_support_first_version');
delete_option('better_chat_support_activation_date');
delete_site_option('better_chat_support_activation_date');
delete_option('better_chat_support_db_version');
delete_site_option('better_chat_support_db_version');
delete_option('better_chat_support_review_notice_dismiss');
delete_site_option('better_chat_support_review_notice_dismiss');
delete_option('mcs-opt');
delete_site_option('mcs-opt');

// Delete Transients
delete_transient('themeatelier_plugins');
delete_site_transient('themeatelier_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_BetterChatSupport_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_BetterChatSupport_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_BetterChatSupport_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_BetterChatSupport_errors_%' ) );

