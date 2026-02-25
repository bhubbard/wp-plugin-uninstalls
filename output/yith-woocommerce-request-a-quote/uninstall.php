<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ywraq_page_id');
delete_site_option('ywraq_page_id');
delete_option('ywraq_hide_add_to_cart');
delete_site_option('ywraq_hide_add_to_cart');
delete_option('ywraq_after_click_action');
delete_site_option('ywraq_after_click_action');
delete_option('ywraq_show_button_near_add_to_cart');
delete_site_option('ywraq_show_button_near_add_to_cart');
delete_option('ywraq_show_btn_link');
delete_site_option('ywraq_show_btn_link');
delete_option('ywraq_hide_price');
delete_site_option('ywraq_hide_price');
delete_option('ywctm_exclude_price_alternative_text');
delete_site_option('ywctm_exclude_price_alternative_text');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_yith_ywraq_session_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ywraq_show_btn_link_text');
delete_site_option('ywraq_show_btn_link_text');
delete_option('ywraq_add_to_quote_button_color');
delete_site_option('ywraq_add_to_quote_button_color');
delete_option('woocommerce_email_from_name');
delete_site_option('woocommerce_email_from_name');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('ywraq_activate_thank_you_page');
delete_site_option('ywraq_activate_thank_you_page');
delete_option('ywraq_show_btn_single_page');
delete_site_option('ywraq_show_btn_single_page');
delete_option('ywraq_accept_link_label');
delete_site_option('ywraq_accept_link_label');
delete_option('ywraq_reject_link_label');
delete_site_option('ywraq_reject_link_label');
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
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
delete_option('ywraq_add_privacy_checkbox');
delete_site_option('ywraq_add_privacy_checkbox');
delete_option('ywraq_privacy_description');
delete_site_option('ywraq_privacy_description');
delete_option('ywraq_privacy_label');
delete_site_option('ywraq_privacy_label');
delete_option('ywraq_show_sku');
delete_site_option('ywraq_show_sku');
delete_option('ywraq_show_update_list');
delete_site_option('ywraq_show_update_list');
delete_option('ywraq_update_list_label');
delete_site_option('ywraq_update_list_label');
delete_option('ywraq_page_list_layout_template');
delete_site_option('ywraq_page_list_layout_template');

// Delete Transients
delete_transient('yith-plugin-fw-latest-hc-articles');
delete_site_transient('yith-plugin-fw-latest-hc-articles');
delete_transient('yith-plugin-fw-system-status-tls-version');
delete_site_transient('yith-plugin-fw-system-status-tls-version');
delete_transient('yith-plugin-fw-system-status-output-ip');
delete_site_transient('yith-plugin-fw-system-status-output-ip');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('ywraq_clean_cron');

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

