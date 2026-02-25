<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trad_ioy_gen_settings');
delete_site_option('trad_ioy_gen_settings');
delete_option('trad_ioy_version');
delete_site_option('trad_ioy_version');
delete_option('trad_ioy_local_css');
delete_site_option('trad_ioy_local_css');
delete_option('trad_ioy_avail_bible_versions');
delete_site_option('trad_ioy_avail_bible_versions');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'trad_ioy_activate_shortcodes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'trad_ioy_activate_shortcodes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'trad_ioy_activate_shortcodes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'trad_ioy_activate_shortcodes' ) );

