<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yith-wfbt-button-color');
delete_site_option('yith-wfbt-button-color');
delete_option('yith-wfbt-button-color-hover');
delete_site_option('yith-wfbt-button-color-hover');
delete_option('yith-wfbt-button-text-color');
delete_site_option('yith-wfbt-button-text-color');
delete_option('yith-wfbt-button-text-color-hover');
delete_site_option('yith-wfbt-button-text-color-hover');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('yit_font_awesome_list');
delete_site_option('yit_font_awesome_list');
delete_option('yit_dashicons_list');
delete_site_option('yit_dashicons_list');
delete_option('yit_plugin_fw_panel_wc_default_options_set');
delete_site_option('yit_plugin_fw_panel_wc_default_options_set');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_width' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_height' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('yit_recently_activated');
delete_site_option('yit_recently_activated');
delete_option('yith_system_info');
delete_site_option('yith_system_info');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-yith-attachment-id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('yith-wfbt-button-label');
delete_site_option('yith-wfbt-button-label');
delete_option('yith-wfbt-total-label');
delete_site_option('yith-wfbt-total-label');
delete_option('yith-wfbt-form-title');
delete_site_option('yith-wfbt-form-title');

// Delete Transients
delete_transient('yith-plugin-fw-latest-hc-articles');
delete_site_transient('yith-plugin-fw-latest-hc-articles');
delete_transient('yith-plugin-fw-system-status-tls-version');
delete_site_transient('yith-plugin-fw-system-status-tls-version');
delete_transient('yith-plugin-fw-system-status-output-ip');
delete_site_transient('yith-plugin-fw-system-status-output-ip');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'blog-cats' ) );

