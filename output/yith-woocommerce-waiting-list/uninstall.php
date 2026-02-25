<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('yith-wcwtl-form-message');
delete_site_option('yith-wcwtl-form-message');
delete_option('yith-wcwtl-button-add-label');
delete_site_option('yith-wcwtl-button-add-label');
delete_option('yith-wcwtl-button-leave-label');
delete_site_option('yith-wcwtl-button-leave-label');
delete_option('yith-wcwtl-button-success-msg');
delete_site_option('yith-wcwtl-button-success-msg');
delete_option('yith-wcwtl-button-error-msg-for-user-already-subscribed');
delete_site_option('yith-wcwtl-button-error-msg-for-user-already-subscribed');
delete_option('yith-wcwtl-leave-message');
delete_site_option('yith-wcwtl-leave-message');
delete_option('yith-wcwtl-button-error-msg');
delete_site_option('yith-wcwtl-button-error-msg');
delete_option('yith-wcwtl-enable-privacy-checkbox');
delete_site_option('yith-wcwtl-enable-privacy-checkbox');
delete_option('yith-wcwtl-keep-after-email');
delete_site_option('yith-wcwtl-keep-after-email');
delete_option('yith-wcwtl-enable');
delete_site_option('yith-wcwtl-enable');
delete_option('woocommerce_myaccount_waiting_list_endpoint');
delete_site_option('woocommerce_myaccount_waiting_list_endpoint');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
delete_option('woocommerce_yith_waitlist_mail_instock_settings');
delete_site_option('woocommerce_yith_waitlist_mail_instock_settings');
delete_option('yith-wcwtl-section-background');
delete_site_option('yith-wcwtl-section-background');
delete_option('yith-wcwtl-section-border-radius');
delete_site_option('yith-wcwtl-section-border-radius');
delete_option('yith-wcwtl-notice-colors');
delete_site_option('yith-wcwtl-notice-colors');
delete_option('yith-wcwtl-privacy-checkbox-text');
delete_site_option('yith-wcwtl-privacy-checkbox-text');
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
delete_option('yith-wcwtl-form-placeholder');
delete_site_option('yith-wcwtl-form-placeholder');
delete_option('yith-wcwtl-enable-button-leave');
delete_site_option('yith-wcwtl-enable-button-leave');

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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yith_wcwtl_products_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yith_wcwtl_products_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yith_wcwtl_products_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yith_wcwtl_products_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yith_wcwtl_users_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yith_wcwtl_users_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yith_wcwtl_users_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yith_wcwtl_users_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'blog-cats' ) );

