<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oow_dismissed_notice_elementor');
delete_site_option('oow_dismissed_notice_elementor');
delete_option('oow_dismissed_notice_divi');
delete_site_option('oow_dismissed_notice_divi');
delete_option('oow_dismissed_notice_wpbakery');
delete_site_option('oow_dismissed_notice_wpbakery');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'oow_dismissed_notice_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('oowcode_admin_theme');
delete_site_option('oowcode_admin_theme');

