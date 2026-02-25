<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dc_type');
delete_site_option('dc_type');
delete_option('autodisp_page_id');
delete_site_option('autodisp_page_id');
delete_option('auto_disp_menu_item_id');
delete_site_option('auto_disp_menu_item_id');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

