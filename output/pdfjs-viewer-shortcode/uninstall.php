<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pdfjs_notice_key');
delete_site_option('pdfjs_notice_key');
delete_option('pdfjs_notice_version');
delete_site_option('pdfjs_notice_version');
delete_option('pdfjs_download_button');
delete_site_option('pdfjs_download_button');
delete_option('pdfjs_print_button');
delete_site_option('pdfjs_print_button');
delete_option('pdfjs_search_button');
delete_site_option('pdfjs_search_button');
delete_option('pdfjs_editing_buttons');
delete_site_option('pdfjs_editing_buttons');
delete_option('pdfjs_fullscreen_link');
delete_site_option('pdfjs_fullscreen_link');
delete_option('pdfjs_fullscreen_link_text');
delete_site_option('pdfjs_fullscreen_link_text');
delete_option('pdfjs_fullscreen_link_target');
delete_site_option('pdfjs_fullscreen_link_target');
delete_option('pdfjs_embed_height');
delete_site_option('pdfjs_embed_height');
delete_option('pdfjs_embed_width');
delete_site_option('pdfjs_embed_width');
delete_option('pdfjs_viewer_scale');
delete_site_option('pdfjs_viewer_scale');
delete_option('pdfjs_viewer_pagemode');
delete_site_option('pdfjs_viewer_pagemode');
delete_option('pdfjs_custom_page');
delete_site_option('pdfjs_custom_page');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pdfjs_button_download_%', '_site_transient_pdfjs_button_download_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pdfjs_button_print_%', '_site_transient_pdfjs_button_print_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pdfjs_button_openfile_%', '_site_transient_pdfjs_button_openfile_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pdfjs_button_zoom_%', '_site_transient_pdfjs_button_zoom_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pdfjs_button_pagemode_%', '_site_transient_pdfjs_button_pagemode_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pdfjs_button_searchbutton_%', '_site_transient_pdfjs_button_searchbutton_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pdfjs_button_editingbuttons_%', '_site_transient_pdfjs_button_editingbuttons_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

