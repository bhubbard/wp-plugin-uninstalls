<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cp_editor_table');
delete_site_option('cp_editor_table');
delete_option('polylang');
delete_site_option('polylang');
delete_option('cp_editor_plugin_version');
delete_site_option('cp_editor_plugin_version');

// Delete Transients
delete_transient('cpe_pro_activation_blocked');
delete_site_transient('cpe_pro_activation_blocked');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cp_editor' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cp_editor' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cp_editor' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cp_editor' ) );

