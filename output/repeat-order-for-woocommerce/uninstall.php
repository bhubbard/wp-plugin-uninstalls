<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prro_version');
delete_site_option('prro_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'prro_order_status_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('prro_reactivate_action');
delete_site_option('prro_reactivate_action');
delete_option('prro_cart_notice');
delete_site_option('prro_cart_notice');
delete_option('prro_create_order_note');
delete_site_option('prro_create_order_note');
delete_option('prro_show_repeat_order_on_order_list');
delete_site_option('prro_show_repeat_order_on_order_list');
delete_option('prro_show_user_reorder_list');
delete_site_option('prro_show_user_reorder_list');
delete_option('prro_show_reorder_in_email');
delete_site_option('prro_show_reorder_in_email');

