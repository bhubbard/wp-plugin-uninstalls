<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ywcas_last_index_process');
delete_site_option('ywcas_last_index_process');
delete_option('yith_wcas_search_fields');
delete_site_option('yith_wcas_search_fields');
delete_option('yith_wcas_synonymous');
delete_site_option('yith_wcas_synonymous');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('yith_wcas_db_version');
delete_site_option('yith_wcas_db_version');
delete_option('ywcas_first_indexing');
delete_site_option('ywcas_first_indexing');
delete_option('yith_wcas_free_option_version');
delete_site_option('yith_wcas_free_option_version');
delete_option('yith_wcas_enable_transient');
delete_site_option('yith_wcas_enable_transient');
delete_option('ywcas_updated_to_v2');
delete_site_option('ywcas_updated_to_v2');
delete_option('ywcas_user_switch_to_block');
delete_site_option('ywcas_user_switch_to_block');
delete_option('ywcas_old_setting_checked');
delete_site_option('ywcas_old_setting_checked');
delete_option('yith_wcas_search_default_template');
delete_site_option('yith_wcas_search_default_template');
delete_option('yith_wcas_show_search_list');
delete_site_option('yith_wcas_show_search_list');
delete_option('yith_wcas_show_category_list');
delete_site_option('yith_wcas_show_category_list');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'yith_wcas_search_in_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('yith_wcas_search_by_sku');
delete_site_option('yith_wcas_search_by_sku');
delete_option('yith_wcas_cf_name');
delete_site_option('yith_wcas_cf_name');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'yith_wcas_show_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('yith_wcas_show_thumbnail');
delete_site_option('yith_wcas_show_thumbnail');
delete_option('yith_wcas_show_sale_badge');
delete_site_option('yith_wcas_show_sale_badge');
delete_option('yith_wcas_show_outofstock_badge');
delete_site_option('yith_wcas_show_outofstock_badge');
delete_option('yith_wcas_show_featured_badge');
delete_site_option('yith_wcas_show_featured_badge');
delete_option('yith_wcas_search_input_label');
delete_site_option('yith_wcas_search_input_label');
delete_option('yith_wcas_search_submit_label');
delete_site_option('yith_wcas_search_submit_label');
delete_option('yith_wcas_posts_per_page');
delete_site_option('yith_wcas_posts_per_page');
delete_option('yith_wcas_search_price_label');
delete_site_option('yith_wcas_search_price_label');
delete_option('yith_wcas_search_show_thumbnail_dim');
delete_site_option('yith_wcas_search_show_thumbnail_dim');
delete_option('yith_wcas_search_title_color');
delete_site_option('yith_wcas_search_title_color');
delete_option('yith_wcas_show_excerpt_num_words');
delete_site_option('yith_wcas_show_excerpt_num_words');
delete_option('yith_wcas_search_show_view_all');
delete_site_option('yith_wcas_search_show_view_all');
delete_option('yith_wcas_search_show_view_all_text');
delete_site_option('yith_wcas_search_show_view_all_text');
delete_option('yith_wcas_search_show_no_results_text');
delete_site_option('yith_wcas_search_show_no_results_text');
delete_option('yith_wcas_hide_feature_if_on_sale');
delete_site_option('yith_wcas_hide_feature_if_on_sale');
delete_option('ywcas_shortcodes_list');
delete_site_option('ywcas_shortcodes_list');
delete_option('yith_wcas_sale_badge');
delete_site_option('yith_wcas_sale_badge');
delete_option('yith_wcas_outofstock');
delete_site_option('yith_wcas_outofstock');
delete_option('yith_wcas_featured_badge');
delete_site_option('yith_wcas_featured_badge');
delete_option('yith_wcas_loader_url');
delete_site_option('yith_wcas_loader_url');
delete_option('widget_yith_woocommerce_ajax_search');
delete_site_option('widget_yith_woocommerce_ajax_search');
delete_option('yith_wcas_search_in_title');
delete_site_option('yith_wcas_search_in_title');
delete_option('yith_wcas_search_in_excerpt');
delete_site_option('yith_wcas_search_in_excerpt');
delete_option('yith_wcas_search_in_content');
delete_site_option('yith_wcas_search_in_content');
delete_option('yith_wcas_search_in_product_categories');
delete_site_option('yith_wcas_search_in_product_categories');
delete_option('yith_wcas_search_in_product_tags');
delete_site_option('yith_wcas_search_in_product_tags');
delete_option('yith_wcas_search_by_sku_variations');
delete_site_option('yith_wcas_search_by_sku_variations');
delete_option('yith_wcas_search_in_author');
delete_site_option('yith_wcas_search_in_author');
delete_option('yith_wcas_hide_out_of_stock');
delete_site_option('yith_wcas_hide_out_of_stock');
delete_option('yith_wcas_default_research');
delete_site_option('yith_wcas_default_research');
delete_option('yith_wcas_include_variations');
delete_site_option('yith_wcas_include_variations');
delete_option('yith_wcas_search_type_more_words');
delete_site_option('yith_wcas_search_type_more_words');
delete_option('yith_wcas_transient_duration');
delete_site_option('yith_wcas_transient_duration');
delete_option('yith_wcas_show_excerpt');
delete_site_option('yith_wcas_show_excerpt');
delete_option('yith_wcas_categories');
delete_site_option('yith_wcas_categories');
delete_option('yith_wcas_show_price');
delete_site_option('yith_wcas_show_price');
delete_option('yith_wcas_order_by_post_type');
delete_site_option('yith_wcas_order_by_post_type');
delete_option('yith_wcas_order_by_post_type_select');
delete_site_option('yith_wcas_order_by_post_type_select');
delete_option('yith_wcas_search_in_product_brands');
delete_site_option('yith_wcas_search_in_product_brands');
delete_option('yith_wcas_search_in_vendor');
delete_site_option('yith_wcas_search_in_vendor');
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
delete_option('yith_wcas_min_chars');
delete_site_option('yith_wcas_min_chars');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ywcas_stored_query_%', '_site_transient_ywcas_stored_query_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
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

