<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yith_woocompare_show_table');
delete_site_option('yith_woocompare_show_table');
delete_option('yith_woocompare_button_text');
delete_site_option('yith_woocompare_button_text');
delete_option('yith_woocompare_show_compare_button_in');
delete_site_option('yith_woocompare_show_compare_button_in');
delete_option('yith_woocompare_is_button');
delete_site_option('yith_woocompare_is_button');
delete_option('yith_woocompare_version');
delete_site_option('yith_woocompare_version');
delete_option('yith_woocompare_image_size');
delete_site_option('yith_woocompare_image_size');
delete_option('yith_woocompare_compare_button_in_product_page');
delete_site_option('yith_woocompare_compare_button_in_product_page');
delete_option('yith_woocompare_compare_button_in_products_list');
delete_site_option('yith_woocompare_compare_button_in_products_list');
delete_option('yith_woocompare_auto_open');
delete_site_option('yith_woocompare_auto_open');
delete_option('yith_woocompare_open_after_second');
delete_site_option('yith_woocompare_open_after_second');
delete_option('yith_woocompare_excluded_category');
delete_site_option('yith_woocompare_excluded_category');
delete_option('yith_woocompare_excluded_category_inverse');
delete_site_option('yith_woocompare_excluded_category_inverse');
delete_option('yith_woocompare_include_by_category');
delete_site_option('yith_woocompare_include_by_category');
delete_option('yith_woocompare_included_categories');
delete_site_option('yith_woocompare_included_categories');
delete_option('yith-woocompare-table-image-in-popup');
delete_site_option('yith-woocompare-table-image-in-popup');
delete_option('yith-woocompare-table-image-in-page');
delete_site_option('yith-woocompare-table-image-in-page');
delete_option('yith_woocompare_show_image_table_in');
delete_site_option('yith_woocompare_show_image_table_in');
delete_option('yith-woocompare-share-in-popup');
delete_site_option('yith-woocompare-share-in-popup');
delete_option('yith-woocompare-share-in-page');
delete_site_option('yith-woocompare-share-in-page');
delete_option('yith_woocompare_show_share_in');
delete_site_option('yith_woocompare_show_share_in');
delete_option('yith-woocompare-related-in-popup');
delete_site_option('yith-woocompare-related-in-popup');
delete_option('yith-woocompare-related-in-page');
delete_site_option('yith-woocompare-related-in-page');
delete_option('yith_woocompare_show_related_in');
delete_site_option('yith_woocompare_show_related_in');
delete_option('yith_woocompare_num_product_compared');
delete_site_option('yith_woocompare_num_product_compared');
delete_option('yith_woocompare_should_limit_comparison');
delete_site_option('yith_woocompare_should_limit_comparison');
delete_option('yith_woocompare_num_fixedcolumns');
delete_site_option('yith_woocompare_num_fixedcolumns');
delete_option('yith_woocompare_has_fixed_columns');
delete_site_option('yith_woocompare_has_fixed_columns');
delete_option('yith-woocompare-related-autoplay');
delete_site_option('yith-woocompare-related-autoplay');
delete_option('yith-woocompare-related-navigation');
delete_site_option('yith-woocompare-related-navigation');
delete_option('yith_woocompare_related_slider_options');
delete_site_option('yith_woocompare_related_slider_options');
delete_option('yith_woocompare_fields');
delete_site_option('yith_woocompare_fields');
delete_option('yith_woocompare_fields_product_info_title');
delete_site_option('yith_woocompare_fields_product_info_title');
delete_option('yith_woocompare_fields_product_info_image');
delete_site_option('yith_woocompare_fields_product_info_image');
delete_option('yith_woocompare_fields_product_info_add_cart');
delete_site_option('yith_woocompare_fields_product_info_add_cart');
delete_option('yith_woocompare_price_end');
delete_site_option('yith_woocompare_price_end');
delete_option('yith_woocompare_add_to_cart_end');
delete_site_option('yith_woocompare_add_to_cart_end');
delete_option('yith_woocompare_use_full_description');
delete_site_option('yith_woocompare_use_full_description');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('yith_woocompare_replace_stock_labels_with_icons');
delete_site_option('yith_woocompare_replace_stock_labels_with_icons');
delete_option('yith_woocompare_table_text');
delete_site_option('yith_woocompare_table_text');
delete_option('yith_woocompare_table_description');
delete_site_option('yith_woocompare_table_description');
delete_option('yith_woocompare_table_image_format');
delete_site_option('yith_woocompare_table_image_format');
delete_option('yith_woocompare_button_text_added');
delete_site_option('yith_woocompare_button_text_added');
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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'yith_woocompare_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'yith_woocompare_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'yith_woocompare_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'yith_woocompare_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'yith_woocompare_product_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'yith_woocompare_product_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'yith_woocompare_product_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'yith_woocompare_product_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'blog-cats' ) );

