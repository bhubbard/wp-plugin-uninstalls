<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sbc_id');
delete_site_option('sbc_id');
delete_option('sbc_separator');
delete_site_option('sbc_separator');
delete_option('sbc_home');
delete_site_option('sbc_home');
delete_option('sbc_default_settings');
delete_site_option('sbc_default_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sbc_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sbc_before_bgcolor');
delete_site_option('sbc_before_bgcolor');
delete_option('sbc_after_bgcolor');
delete_site_option('sbc_after_bgcolor');
delete_option('sbc_before_fontcolor');
delete_site_option('sbc_before_fontcolor');
delete_option('sbc_after_fontcolor');
delete_site_option('sbc_after_fontcolor');
delete_option('sbc_separator_color');
delete_site_option('sbc_separator_color');

