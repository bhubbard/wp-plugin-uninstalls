#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awf_version'
wp option delete 'awf_cache_reset_mode'
wp option delete 'awf_global_wrapper'
wp option delete 'awf_use_wc_orderby'
wp option delete 'awf_range_slider_style'
wp option delete 'awf_cm_v2'
wp option delete 'awf_redirect_archives'
wp option delete 'awf_color_image_style'
wp option delete 'awf_color_filter_style'
wp option delete 'awf_image_filter_style'
wp option delete 'awf_custom_style'
wp option delete 'awf_remove_wc_orderby'
wp option delete 'awf_display_wc_orderby'
wp option delete 'awf_product_list_template_options'
wp option delete 'awf_display_wc_shop_title'
wp option delete 'awf_remove_wc_shop_title'
wp option delete 'awf_shop_title_badges'
wp option delete 'awf_force_wrapper_reload'
wp option delete 'awf_get_parameters_support'
wp option delete 'awf_ajax_mode'
wp option delete 'awf_force_published_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ajax_on'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_button_on'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_type'"
wp option delete 'awf_hide_empty_filters'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings'"
wp option delete 'awf_presets'
wp option delete 'awf_product_cat_pretty_name'
wp option delete 'awf_product_tag_pretty_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%module'"
wp option delete 'awf_ppp_default'
wp option delete 'awf_preset_1_display_mode'
wp option delete 'awf_customizer_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_display_mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_name'"
wp option delete 'awf_theme_support'
wp option delete 'awf_shop_columns'
wp option delete 'awf_ajax_pagination'
wp option delete 'awf_ajax_scroll_on'
wp option delete 'awf_ajax_scroll_adjustment'
wp option delete 'awf_archive_components_support'
wp option delete 'awf_breadcrumbs_support'
wp option delete 'awf_custom_selectors'
wp option delete 'awf_products_html_wrapper'
wp option delete 'awf_pretty_scrollbars'
wp option delete 'awf_fontawesome_font_enqueue'
wp option delete 'awf_excluded_customizer_sections'
wp option delete 'awf_user_css'
wp option delete 'awf_page_title'
wp option delete 'awf_shop_title'
wp option delete 'awf_default_page_title'
wp option delete 'awf_add_canonical'
wp option delete 'awf_add_nofollow'
wp option delete 'awf_add_seo_meta_description'
wp option delete 'awf_seo_meta_description'
wp option delete 'awf_seo_filters_title_prefix'
wp option delete 'awf_seo_filters_separator'
wp option delete 'awf_seo_filter_values_separator'
wp option delete 'awf_rewrite_rules'
wp option delete 'awf_query_vars'
wp option delete 'awf_shortcode_pages'
wp option delete 'awf_default_shop_title'
wp option delete 'awf_seo_filters_settings'
wp option delete 'awf_toggle_btn_label'
wp option delete 'awf_popup_close_btn_label'
wp option delete 'awf_toggle_btn_position_before'
wp option delete 'awf_dynamic_price_ranges'
wp option delete 'awf_ss_engine'
wp option delete 'awf_include_parents_in_associations'
wp option delete 'awf_include_children_on'
wp option delete 'awf_variations_stock_support'
wp option delete 'awf_hierarchical_archive_permalinks'
wp option delete 'awf_force_products_display_on'
wp option delete 'awf_user_js'
wp option delete 'awf_counts_cache_days'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_responsive_width'"
wp option delete 'awf_style_options_file'
wp option delete 'awf_default_font'
wp option delete 'awf_popup_fix_close_btn'
wp option delete 'awf_enable_cron_cache_reset'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'awf_ppp_limit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_query_operator'"
wp option delete 'woocommerce_tax_display_shop'
wp option delete '_wcml_settings'
wp option delete 'woocommerce_attribute_lookup_enabled'
wp option delete 'awf_display_categories_on_sc_pages'
wp option delete 'awf_multilingual_support'
wp option delete 'awf_daterangepicker_enabled'
wp option delete 'awf_default_font_enqueue'
wp option delete 'awf_badge_reset_label'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_description'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_title_badges'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset_btn'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset_btn_label'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_filter_btn_label'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sbs_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sbs_submission'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sbs_next_btn'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sbs_back_btn'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sbs_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_layout'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_togglable_mode'"
wp option delete 'awf_compatibility_support'
wp option delete 'awf_preset_1_name'
wp option delete 'awf_preset_1_type'
wp option delete 'awf_preset_1_togglable_mode'
wp option delete 'awf_archive_identifier_pretty_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pretty_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_awf_module_pretty_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_awf_meta_pretty_name'"
wp option delete 'awf_seo_filters_title_postfix'
wp option delete 'awf_cache_reset_counts_rebuild'
wp option delete 'awf_pwb-brand_pretty_name'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'awf_rewrite_rules_changed'
wp transient delete 'awf_flush_rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_awf_vss_products_cache_%' OR option_name LIKE '_site_transient_awf_vss_products_cache_%'"
wp transient delete 'awf_vss_variable_term_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_awf_vss_variations_cache_%' OR option_name LIKE '_site_transient_awf_vss_variations_cache_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%' OR option_name LIKE '_site_transient_timeout_%'"
wp transient delete 'awf_counts_cleanup'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'awf_cron_cache_reset'
wp cron event delete 'fs_debug_turn_off_logging_hook'

