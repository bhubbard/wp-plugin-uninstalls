<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'edd_api_request_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('kirki_downloaded_font_files');
delete_site_option('kirki_downloaded_font_files');
delete_option('kirki_notices');
delete_site_option('kirki_notices');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('kirki_remote_url_contents');
delete_site_transient('kirki_remote_url_contents');
delete_transient('kirki_googlefonts_cache');
delete_site_transient('kirki_googlefonts_cache');
delete_transient('kirki_googlefont_names_cache');
delete_site_transient('kirki_googlefont_names_cache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kirki_fa_nag_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kirki_fa_nag_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kirki_fa_nag_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kirki_fa_nag_dismissed' ) );

