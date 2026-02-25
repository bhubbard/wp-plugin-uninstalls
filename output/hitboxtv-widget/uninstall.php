<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sthw_hide_unknown');
delete_site_option('sthw_hide_unknown');
delete_option('sthw_cache_enable');
delete_site_option('sthw_cache_enable');
delete_option('sthw_cache_lifetime');
delete_site_option('sthw_cache_lifetime');
delete_option('widget_st_hitbox_widget');
delete_site_option('widget_st_hitbox_widget');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_st_hitbox_widget-%', '_site_transient_st_hitbox_widget-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

