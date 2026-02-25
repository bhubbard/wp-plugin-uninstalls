<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('persian_tools_blockeditor_backend_choice');
delete_site_option('persian_tools_blockeditor_backend_choice');
delete_option('persian_tools_remove_wp_generator');
delete_site_option('persian_tools_remove_wp_generator');
delete_option('persian_tools_remove_wp_shortlink');
delete_site_option('persian_tools_remove_wp_shortlink');
delete_option('persian_tools_remove_rsd_feed');
delete_site_option('persian_tools_remove_rsd_feed');
delete_option('persian_tools_remove_emoji');
delete_site_option('persian_tools_remove_emoji');
delete_option('persian_tools_remove_jetpack_requests');
delete_site_option('persian_tools_remove_jetpack_requests');
delete_option('persian_tools_disable_lazyload');
delete_site_option('persian_tools_disable_lazyload');
delete_option('persian_tools_disable_wlwmanifest');
delete_site_option('persian_tools_disable_wlwmanifest');
delete_option('persian_tools_disable_image_resizing');
delete_site_option('persian_tools_disable_image_resizing');
delete_option('persian_tools_disable_xmlrpc');
delete_site_option('persian_tools_disable_xmlrpc');
delete_option('persian_tools_elementor_choice');
delete_site_option('persian_tools_elementor_choice');
delete_option('persian_tools_disable_wooupdates');
delete_site_option('persian_tools_disable_wooupdates');
delete_option('persian_tools_disable_woo_tracks');
delete_site_option('persian_tools_disable_woo_tracks');
delete_option('persian_tools_checkout_fields');
delete_site_option('persian_tools_checkout_fields');
delete_option('persian_tools_guest_redirect_enabled');
delete_site_option('persian_tools_guest_redirect_enabled');
delete_option('persian_tools_guest_redirect_url');
delete_site_option('persian_tools_guest_redirect_url');
delete_option('persian_tools_checkout_message_enabled');
delete_site_option('persian_tools_checkout_message_enabled');
delete_option('persian_tools_checkout_custom_message');
delete_site_option('persian_tools_checkout_custom_message');
delete_option('persian_tools_checkout_message_position');
delete_site_option('persian_tools_checkout_message_position');
delete_option('persian_tools_single_add_to_cart_text');
delete_site_option('persian_tools_single_add_to_cart_text');
delete_option('persian_tools_archive_add_to_cart_text');
delete_site_option('persian_tools_archive_add_to_cart_text');
delete_option('persian_tools_checkout_button_text');
delete_site_option('persian_tools_checkout_button_text');
delete_option('persian_tools_cart_button_text');
delete_site_option('persian_tools_cart_button_text');
delete_option('persian_tools_proceed_to_checkout_text');
delete_site_option('persian_tools_proceed_to_checkout_text');
delete_option('persian_tools_login_slug');
delete_site_option('persian_tools_login_slug');
delete_option('persian_tools_custom_css');
delete_site_option('persian_tools_custom_css');
delete_option('persian_tools_custom_css_desktop');
delete_site_option('persian_tools_custom_css_desktop');
delete_option('persian_tools_custom_css_mobile');
delete_site_option('persian_tools_custom_css_mobile');
delete_option('persian_tools_delete_on_uninstall');
delete_site_option('persian_tools_delete_on_uninstall');
delete_option('persian_tools_option');
delete_site_option('persian_tools_option');
delete_option('persian_tools_font_frontend_choice');
delete_site_option('persian_tools_font_frontend_choice');
delete_option('persian_tools_font_backend_choice');
delete_site_option('persian_tools_font_backend_choice');

