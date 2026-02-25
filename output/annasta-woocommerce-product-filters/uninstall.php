<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awf_version');
delete_site_option('awf_version');
delete_option('awf_cache_reset_mode');
delete_site_option('awf_cache_reset_mode');
delete_option('awf_global_wrapper');
delete_site_option('awf_global_wrapper');
delete_option('awf_use_wc_orderby');
delete_site_option('awf_use_wc_orderby');
delete_option('awf_range_slider_style');
delete_site_option('awf_range_slider_style');
delete_option('awf_cm_v2');
delete_site_option('awf_cm_v2');
delete_option('awf_redirect_archives');
delete_site_option('awf_redirect_archives');
delete_option('awf_color_image_style');
delete_site_option('awf_color_image_style');
delete_option('awf_color_filter_style');
delete_site_option('awf_color_filter_style');
delete_option('awf_image_filter_style');
delete_site_option('awf_image_filter_style');
delete_option('awf_custom_style');
delete_site_option('awf_custom_style');
delete_option('awf_remove_wc_orderby');
delete_site_option('awf_remove_wc_orderby');
delete_option('awf_display_wc_orderby');
delete_site_option('awf_display_wc_orderby');
delete_option('awf_product_list_template_options');
delete_site_option('awf_product_list_template_options');
delete_option('awf_display_wc_shop_title');
delete_site_option('awf_display_wc_shop_title');
delete_option('awf_remove_wc_shop_title');
delete_site_option('awf_remove_wc_shop_title');
delete_option('awf_shop_title_badges');
delete_site_option('awf_shop_title_badges');
delete_option('awf_force_wrapper_reload');
delete_site_option('awf_force_wrapper_reload');
delete_option('awf_get_parameters_support');
delete_site_option('awf_get_parameters_support');
delete_option('awf_ajax_mode');
delete_site_option('awf_ajax_mode');
delete_option('awf_force_published_status');
delete_site_option('awf_force_published_status');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_ajax_on' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_button_on' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_type' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('awf_hide_empty_filters');
delete_site_option('awf_hide_empty_filters');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('awf_presets');
delete_site_option('awf_presets');
delete_option('awf_product_cat_pretty_name');
delete_site_option('awf_product_cat_pretty_name');
delete_option('awf_product_tag_pretty_name');
delete_site_option('awf_product_tag_pretty_name');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%name' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%module' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('awf_ppp_default');
delete_site_option('awf_ppp_default');
delete_option('awf_preset_1_display_mode');
delete_site_option('awf_preset_1_display_mode');
delete_option('awf_customizer_options');
delete_site_option('awf_customizer_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_display_mode' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_name' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('awf_theme_support');
delete_site_option('awf_theme_support');
delete_option('awf_shop_columns');
delete_site_option('awf_shop_columns');
delete_option('awf_ajax_pagination');
delete_site_option('awf_ajax_pagination');
delete_option('awf_ajax_scroll_on');
delete_site_option('awf_ajax_scroll_on');
delete_option('awf_ajax_scroll_adjustment');
delete_site_option('awf_ajax_scroll_adjustment');
delete_option('awf_archive_components_support');
delete_site_option('awf_archive_components_support');
delete_option('awf_breadcrumbs_support');
delete_site_option('awf_breadcrumbs_support');
delete_option('awf_custom_selectors');
delete_site_option('awf_custom_selectors');
delete_option('awf_products_html_wrapper');
delete_site_option('awf_products_html_wrapper');
delete_option('awf_pretty_scrollbars');
delete_site_option('awf_pretty_scrollbars');
delete_option('awf_fontawesome_font_enqueue');
delete_site_option('awf_fontawesome_font_enqueue');
delete_option('awf_excluded_customizer_sections');
delete_site_option('awf_excluded_customizer_sections');
delete_option('awf_user_css');
delete_site_option('awf_user_css');
delete_option('awf_page_title');
delete_site_option('awf_page_title');
delete_option('awf_shop_title');
delete_site_option('awf_shop_title');
delete_option('awf_default_page_title');
delete_site_option('awf_default_page_title');
delete_option('awf_add_canonical');
delete_site_option('awf_add_canonical');
delete_option('awf_add_nofollow');
delete_site_option('awf_add_nofollow');
delete_option('awf_add_seo_meta_description');
delete_site_option('awf_add_seo_meta_description');
delete_option('awf_seo_meta_description');
delete_site_option('awf_seo_meta_description');
delete_option('awf_seo_filters_title_prefix');
delete_site_option('awf_seo_filters_title_prefix');
delete_option('awf_seo_filters_separator');
delete_site_option('awf_seo_filters_separator');
delete_option('awf_seo_filter_values_separator');
delete_site_option('awf_seo_filter_values_separator');
delete_option('awf_rewrite_rules');
delete_site_option('awf_rewrite_rules');
delete_option('awf_query_vars');
delete_site_option('awf_query_vars');
delete_option('awf_shortcode_pages');
delete_site_option('awf_shortcode_pages');
delete_option('awf_default_shop_title');
delete_site_option('awf_default_shop_title');
delete_option('awf_seo_filters_settings');
delete_site_option('awf_seo_filters_settings');
delete_option('awf_toggle_btn_label');
delete_site_option('awf_toggle_btn_label');
delete_option('awf_popup_close_btn_label');
delete_site_option('awf_popup_close_btn_label');
delete_option('awf_toggle_btn_position_before');
delete_site_option('awf_toggle_btn_position_before');
delete_option('awf_dynamic_price_ranges');
delete_site_option('awf_dynamic_price_ranges');
delete_option('awf_ss_engine');
delete_site_option('awf_ss_engine');
delete_option('awf_include_parents_in_associations');
delete_site_option('awf_include_parents_in_associations');
delete_option('awf_include_children_on');
delete_site_option('awf_include_children_on');
delete_option('awf_variations_stock_support');
delete_site_option('awf_variations_stock_support');
delete_option('awf_hierarchical_archive_permalinks');
delete_site_option('awf_hierarchical_archive_permalinks');
delete_option('awf_force_products_display_on');
delete_site_option('awf_force_products_display_on');
delete_option('awf_user_js');
delete_site_option('awf_user_js');
delete_option('awf_counts_cache_days');
delete_site_option('awf_counts_cache_days');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_responsive_width' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('awf_style_options_file');
delete_site_option('awf_style_options_file');
delete_option('awf_default_font');
delete_site_option('awf_default_font');
delete_option('awf_popup_fix_close_btn');
delete_site_option('awf_popup_fix_close_btn');
delete_option('awf_enable_cron_cache_reset');
delete_site_option('awf_enable_cron_cache_reset');
delete_option('woocommerce_default_catalog_orderby');
delete_site_option('woocommerce_default_catalog_orderby');
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');
delete_option('awf_ppp_limit');
delete_site_option('awf_ppp_limit');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_query_operator' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('_wcml_settings');
delete_site_option('_wcml_settings');
delete_option('woocommerce_attribute_lookup_enabled');
delete_site_option('woocommerce_attribute_lookup_enabled');
delete_option('awf_display_categories_on_sc_pages');
delete_site_option('awf_display_categories_on_sc_pages');
delete_option('awf_multilingual_support');
delete_site_option('awf_multilingual_support');
delete_option('awf_daterangepicker_enabled');
delete_site_option('awf_daterangepicker_enabled');
delete_option('awf_default_font_enqueue');
delete_site_option('awf_default_font_enqueue');
delete_option('awf_badge_reset_label');
delete_site_option('awf_badge_reset_label');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_title' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_description' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_show_title_badges' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset_btn' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset_btn_label' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_filter_btn_label' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_sbs_type' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_sbs_submission' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_sbs_next_btn' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_sbs_back_btn' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_sbs_redirect' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_layout' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_togglable_mode' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('awf_compatibility_support');
delete_site_option('awf_compatibility_support');
delete_option('awf_preset_1_name');
delete_site_option('awf_preset_1_name');
delete_option('awf_preset_1_type');
delete_site_option('awf_preset_1_type');
delete_option('awf_preset_1_togglable_mode');
delete_site_option('awf_preset_1_togglable_mode');
delete_option('awf_archive_identifier_pretty_name');
delete_site_option('awf_archive_identifier_pretty_name');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_pretty_name' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_awf_module_pretty_name' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_awf_meta_pretty_name' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('awf_seo_filters_title_postfix');
delete_site_option('awf_seo_filters_title_postfix');
delete_option('awf_cache_reset_counts_rebuild');
delete_site_option('awf_cache_reset_counts_rebuild');
delete_option('awf_pwb-brand_pretty_name');
delete_site_option('awf_pwb-brand_pretty_name');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('awf_rewrite_rules_changed');
delete_site_transient('awf_rewrite_rules_changed');
delete_transient('awf_flush_rewrite_rules');
delete_site_transient('awf_flush_rewrite_rules');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_awf_vss_products_cache_%', '_site_transient_awf_vss_products_cache_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('awf_vss_variable_term_id');
delete_site_transient('awf_vss_variable_term_id');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_awf_vss_variations_cache_%', '_site_transient_awf_vss_variations_cache_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_timeout_%', '_site_transient_timeout_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('awf_counts_cleanup');
delete_site_transient('awf_counts_cleanup');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('awf_cron_cache_reset');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

