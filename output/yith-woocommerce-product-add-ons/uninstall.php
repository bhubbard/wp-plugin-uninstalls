<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yith_wapo_style_label_padding');
delete_site_option('yith_wapo_style_label_padding');
delete_option('yith_wapo_hide_images');
delete_site_option('yith_wapo_hide_images');
delete_option('yith_wapo_show_image_in_cart');
delete_site_option('yith_wapo_show_image_in_cart');
delete_option('yith_wapo_button_in_shop');
delete_site_option('yith_wapo_button_in_shop');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('yith_wapo_show_options_in_cart');
delete_site_option('yith_wapo_show_options_in_cart');
delete_option('yith_wapo_select_options_label');
delete_site_option('yith_wapo_select_options_label');
delete_option('yith_wapo_options_position');
delete_site_option('yith_wapo_options_position');
delete_option('yith_wapo_upload_allowed_file_types');
delete_site_option('yith_wapo_upload_allowed_file_types');
delete_option('yith_wapo_upload_max_file_size');
delete_site_option('yith_wapo_upload_max_file_size');
delete_option('yith_wapo_total_price_box');
delete_site_option('yith_wapo_total_price_box');
delete_option('yith_wapo_replace_product_price');
delete_site_option('yith_wapo_replace_product_price');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('woocommerce_price_thousand_sep');
delete_site_option('woocommerce_price_thousand_sep');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('woocommerce_price_display_suffix');
delete_site_option('woocommerce_price_display_suffix');
delete_option('yith_wapo_hide_button_if_required');
delete_site_option('yith_wapo_hide_button_if_required');
delete_option('yith_wapo_required_option_text');
delete_site_option('yith_wapo_required_option_text');
delete_option('yith_wapo_uploads_folder');
delete_site_option('yith_wapo_uploads_folder');
delete_option('yith_wapo_attach_file_to_email');
delete_site_option('yith_wapo_attach_file_to_email');
delete_option('yith_wapo_style_addon_titles');
delete_site_option('yith_wapo_style_addon_titles');
delete_option('yith_wapo_style_addon_background');
delete_site_option('yith_wapo_style_addon_background');
delete_option('yith_wapo_v2');
delete_site_option('yith_wapo_v2');
delete_option('yith_wapo_remove_del_column');
delete_site_option('yith_wapo_remove_del_column');
delete_option('yith_wapo_db_version');
delete_site_option('yith_wapo_db_version');
delete_option('yith_wapo_db_update_scheduled_for');
delete_site_option('yith_wapo_db_update_scheduled_for');
delete_option('yith_wapo_db_version_option');
delete_site_option('yith_wapo_db_version_option');
delete_option('yith_wpv_vendors_option_advanced_product_options_management');
delete_site_option('yith_wpv_vendors_option_advanced_product_options_management');
delete_option('yith_wapo_hide_options_in_order_email');
delete_site_option('yith_wapo_hide_options_in_order_email');
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('yith_wapo_tooltip_color');
delete_site_option('yith_wapo_tooltip_color');
delete_option('yith_wapo_style_addon_padding');
delete_site_option('yith_wapo_style_addon_padding');
delete_option('yith_wapo_style_accent_color');
delete_site_option('yith_wapo_style_accent_color');
delete_option('yith_wapo_style_borders_color');
delete_site_option('yith_wapo_style_borders_color');
delete_option('yith_wapo_price_box_colors');
delete_site_option('yith_wapo_price_box_colors');
delete_option('yith_wapo_upload_file_colors');
delete_site_option('yith_wapo_upload_file_colors');
delete_option('yith_wapo_required_option_color');
delete_site_option('yith_wapo_required_option_color');
delete_option('yith_wapo_style_checkbox_style');
delete_site_option('yith_wapo_style_checkbox_style');
delete_option('yith_wapo_style_color_swatch_style');
delete_site_option('yith_wapo_style_color_swatch_style');
delete_option('yith_wapo_style_label_font_size');
delete_site_option('yith_wapo_style_label_font_size');
delete_option('yith_wapo_style_description_font_size');
delete_site_option('yith_wapo_style_description_font_size');
delete_option('yith_wapo_style_color_swatch_size');
delete_site_option('yith_wapo_style_color_swatch_size');
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
delete_option('yith_wapo_show_tooltips');
delete_site_option('yith_wapo_show_tooltips');
delete_option('yith_wapo_tooltip_position');
delete_site_option('yith_wapo_tooltip_position');
delete_option('yith_wapo_style_form_style');
delete_site_option('yith_wapo_style_form_style');
delete_option('yith-wapo-hide-titles-and-images');
delete_site_option('yith-wapo-hide-titles-and-images');
delete_option('yith_wapo_show_in_toggle');
delete_site_option('yith_wapo_show_in_toggle');
delete_option('yith_wapo_show_toggle_opened');
delete_site_option('yith_wapo_show_toggle_opened');
delete_option('yith_wccl_db_version');
delete_site_option('yith_wccl_db_version');

// Delete Transients
delete_transient('yith_wapo_migrating_from_v1_to_V2');
delete_site_transient('yith_wapo_migrating_from_v1_to_V2');
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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wapo_disable_global' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wapo_disable_global' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wapo_disable_global' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wapo_disable_global' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

