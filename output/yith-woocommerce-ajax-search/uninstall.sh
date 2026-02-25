#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ywcas_last_index_process'
wp option delete 'yith_wcas_search_fields'
wp option delete 'yith_wcas_synonymous'
wp option delete 'woocommerce_currency_pos'
wp option delete 'yith_wcas_db_version'
wp option delete 'ywcas_first_indexing'
wp option delete 'yith_wcas_free_option_version'
wp option delete 'yith_wcas_enable_transient'
wp option delete 'ywcas_updated_to_v2'
wp option delete 'ywcas_user_switch_to_block'
wp option delete 'ywcas_old_setting_checked'
wp option delete 'yith_wcas_search_default_template'
wp option delete 'yith_wcas_show_search_list'
wp option delete 'yith_wcas_show_category_list'
wp option delete 'woocommerce_tax_display_shop'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'yith_wcas_search_in_%'"
wp option delete 'yith_wcas_search_by_sku'
wp option delete 'yith_wcas_cf_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'yith_wcas_show_%'"
wp option delete 'yith_wcas_show_thumbnail'
wp option delete 'yith_wcas_show_sale_badge'
wp option delete 'yith_wcas_show_outofstock_badge'
wp option delete 'yith_wcas_show_featured_badge'
wp option delete 'yith_wcas_search_input_label'
wp option delete 'yith_wcas_search_submit_label'
wp option delete 'yith_wcas_posts_per_page'
wp option delete 'yith_wcas_search_price_label'
wp option delete 'yith_wcas_search_show_thumbnail_dim'
wp option delete 'yith_wcas_search_title_color'
wp option delete 'yith_wcas_show_excerpt_num_words'
wp option delete 'yith_wcas_search_show_view_all'
wp option delete 'yith_wcas_search_show_view_all_text'
wp option delete 'yith_wcas_search_show_no_results_text'
wp option delete 'yith_wcas_hide_feature_if_on_sale'
wp option delete 'ywcas_shortcodes_list'
wp option delete 'yith_wcas_sale_badge'
wp option delete 'yith_wcas_outofstock'
wp option delete 'yith_wcas_featured_badge'
wp option delete 'yith_wcas_loader_url'
wp option delete 'widget_yith_woocommerce_ajax_search'
wp option delete 'yith_wcas_search_in_title'
wp option delete 'yith_wcas_search_in_excerpt'
wp option delete 'yith_wcas_search_in_content'
wp option delete 'yith_wcas_search_in_product_categories'
wp option delete 'yith_wcas_search_in_product_tags'
wp option delete 'yith_wcas_search_by_sku_variations'
wp option delete 'yith_wcas_search_in_author'
wp option delete 'yith_wcas_hide_out_of_stock'
wp option delete 'yith_wcas_default_research'
wp option delete 'yith_wcas_include_variations'
wp option delete 'yith_wcas_search_type_more_words'
wp option delete 'yith_wcas_transient_duration'
wp option delete 'yith_wcas_show_excerpt'
wp option delete 'yith_wcas_categories'
wp option delete 'yith_wcas_show_price'
wp option delete 'yith_wcas_order_by_post_type'
wp option delete 'yith_wcas_order_by_post_type_select'
wp option delete 'yith_wcas_search_in_product_brands'
wp option delete 'yith_wcas_search_in_vendor'
wp option delete 'yit_font_awesome_list'
wp option delete 'yit_dashicons_list'
wp option delete 'yit_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'yit_recently_activated'
wp option delete 'yith_system_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id'"
wp option delete 'yith_wcas_min_chars'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ywcas_stored_query_%' OR option_name LIKE '_site_transient_ywcas_stored_query_%'"
wp transient delete 'yith-plugin-fw-latest-hc-articles'
wp transient delete 'yith-plugin-fw-system-status-tls-version'
wp transient delete 'yith-plugin-fw-system-status-output-ip'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"
