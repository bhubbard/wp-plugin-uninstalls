<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pf_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('printfriendly_option');
delete_site_option('printfriendly_option');
delete_option('pf_button_type');
delete_site_option('pf_button_type');
delete_option('pf_custom_image');
delete_site_option('pf_custom_image');
delete_option('pf_custom_text');
delete_site_option('pf_custom_text');
delete_option('pf_custom_both');
delete_site_option('pf_custom_both');
delete_option('pf_show_list');
delete_site_option('pf_show_list');
delete_option('pf_content_placement');
delete_site_option('pf_content_placement');
delete_option('pf_content_position');
delete_site_option('pf_content_position');
delete_option('pf_margin_top');
delete_site_option('pf_margin_top');
delete_option('pf_margin_right');
delete_site_option('pf_margin_right');
delete_option('pf_margin_bottom');
delete_site_option('pf_margin_bottom');
delete_option('pf_margin_left');
delete_site_option('pf_margin_left');
delete_option('pf_text_color');
delete_site_option('pf_text_color');
delete_option('pf_text_size');
delete_site_option('pf_text_size');

// Delete Transients
delete_transient('pf-tab');
delete_site_transient('pf-tab');

