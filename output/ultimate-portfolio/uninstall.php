<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ultimate_portfolio_form_data');
delete_site_option('ultimate_portfolio_form_data');
delete_option('ultimate_portfolio_default_image_id');
delete_site_option('ultimate_portfolio_default_image_id');

// Delete Transients
delete_transient('ultimate_portfolio_plugin_activated');
delete_site_transient('ultimate_portfolio_plugin_activated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ultimate_portfolio_shortcodes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ultimate_portfolio_shortcodes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ultimate_portfolio_shortcodes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ultimate_portfolio_shortcodes' ) );

