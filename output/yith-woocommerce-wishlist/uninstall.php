<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yith_wcwl_disable_wishlist_for_unauthenticated_users');
delete_site_option('yith_wcwl_disable_wishlist_for_unauthenticated_users');
delete_option('yith-wcwl-welcome-modal');
delete_site_option('yith-wcwl-welcome-modal');
delete_option('yith_wcwl_wishlist_page_id');
delete_site_option('yith_wcwl_wishlist_page_id');
delete_option('yith_wcwl_product_added_text');
delete_site_option('yith_wcwl_product_added_text');
delete_option('yith_wcwl_remove_after_add_to_cart');
delete_site_option('yith_wcwl_remove_after_add_to_cart');
delete_option('yith_wcwl_button_position');
delete_site_option('yith_wcwl_button_position');
delete_option('yith_wcwl_show_on_loop');
delete_site_option('yith_wcwl_show_on_loop');
delete_option('yith_wcwl_loop_position');
delete_site_option('yith_wcwl_loop_position');
delete_option('yith_wcwl_redirect_cart');
delete_site_option('yith_wcwl_redirect_cart');
delete_option('yith_wcwl_ajax_enable');
delete_site_option('yith_wcwl_ajax_enable');
delete_option('yith_wcwl_add_to_cart_style');
delete_site_option('yith_wcwl_add_to_cart_style');
delete_option('yith_wcwl_add_to_cart_icon');
delete_site_option('yith_wcwl_add_to_cart_icon');
delete_option('yith_wcwl_add_to_cart_custom_icon');
delete_site_option('yith_wcwl_add_to_cart_custom_icon');
delete_option('yith_wcwl_add_to_cart_text');
delete_site_option('yith_wcwl_add_to_cart_text');
delete_option('yith_wcwl_quantity_show');
delete_site_option('yith_wcwl_quantity_show');
delete_option('yith_wfbt_enable_integration');
delete_site_option('yith_wfbt_enable_integration');
delete_option('yith_wcwl_custom_css');
delete_site_option('yith_wcwl_custom_css');
delete_option('yith_wcwl_version');
delete_site_option('yith_wcwl_version');
delete_option('yith_wcwl_wishlist_title');
delete_site_option('yith_wcwl_wishlist_title');
delete_option('yith_wcwl_price_show');
delete_site_option('yith_wcwl_price_show');
delete_option('yith_wcwl_stock_show');
delete_site_option('yith_wcwl_stock_show');
delete_option('yith_wcwl_show_dateadded');
delete_site_option('yith_wcwl_show_dateadded');
delete_option('yith_wcwl_add_to_cart_show');
delete_site_option('yith_wcwl_add_to_cart_show');
delete_option('yith_wcwl_show_remove');
delete_site_option('yith_wcwl_show_remove');
delete_option('yith_wcwl_variation_show');
delete_site_option('yith_wcwl_variation_show');
delete_option('yith_wcwl_repeat_remove_button');
delete_site_option('yith_wcwl_repeat_remove_button');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('yith_wcwl_add_to_wishlist_icon');
delete_site_option('yith_wcwl_add_to_wishlist_icon');
delete_option('yith_wcwl_add_to_wishlist_custom_icon');
delete_site_option('yith_wcwl_add_to_wishlist_custom_icon');
delete_option('yith_wcwl_enable_share');
delete_site_option('yith_wcwl_enable_share');
delete_option('yith_wcwl_share_fb');
delete_site_option('yith_wcwl_share_fb');
delete_option('yith_wcwl_share_twitter');
delete_site_option('yith_wcwl_share_twitter');
delete_option('yith_wcwl_share_pinterest');
delete_site_option('yith_wcwl_share_pinterest');
delete_option('yith_wcwl_share_email');
delete_site_option('yith_wcwl_share_email');
delete_option('yith_wcwl_share_whatsapp');
delete_site_option('yith_wcwl_share_whatsapp');
delete_option('yith_wcwl_share_url');
delete_site_option('yith_wcwl_share_url');
delete_option('yith_wcwl_socials_title');
delete_site_option('yith_wcwl_socials_title');
delete_option('yith_wcwl_socials_text');
delete_site_option('yith_wcwl_socials_text');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_button_icon' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_button_custom_icon' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('yith_wcwl_socials_image_url');
delete_site_option('yith_wcwl_socials_image_url');
delete_option('yith_wcwl_already_in_wishlist_text');
delete_site_option('yith_wcwl_already_in_wishlist_text');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('yith_wcwl_use_button');
delete_site_option('yith_wcwl_use_button');
delete_option('yith_wcwl_frontend_css');
delete_site_option('yith_wcwl_frontend_css');
delete_option('yith_wcwl_add_to_wishlist_style');
delete_site_option('yith_wcwl_add_to_wishlist_style');
delete_option('yith_wcwl_ask_an_estimate_style');
delete_site_option('yith_wcwl_ask_an_estimate_style');
delete_option('yith_wcwl_rounded_corners');
delete_site_option('yith_wcwl_rounded_corners');
delete_option('yith_wcwl_rounded_corners_radius');
delete_site_option('yith_wcwl_rounded_corners_radius');
delete_option('yith_wcwl_add_to_cart_rounded_corners_radius');
delete_site_option('yith_wcwl_add_to_cart_rounded_corners_radius');
delete_option('yith_wcwl_ask_an_estimate_rounded_corners_radius');
delete_site_option('yith_wcwl_ask_an_estimate_rounded_corners_radius');
delete_option('yith_wcwl_rendering_method');
delete_site_option('yith_wcwl_rendering_method');
delete_option('yith_wcwl_add_to_wishlist_icon_type');
delete_site_option('yith_wcwl_add_to_wishlist_icon_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_type' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
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
delete_option('yith_wcwl_db_version');
delete_site_option('yith_wcwl_db_version');
delete_option('yith-wcwl-pageid');
delete_site_option('yith-wcwl-pageid');

// Delete Transients
delete_transient('yith_wcwl_hidden_products');
delete_site_transient('yith_wcwl_hidden_products');
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

