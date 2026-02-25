#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_style_version'"
wp option delete 'psad_flush_cached'
wp option delete 'psad_global_category_reset'
wp option delete 'woocommerce_version'
wp option delete 'wc_psad_lite_version'
wp option delete 'wc_psad_just_installed'
wp option delete 'wc_sort_display_style_version'
wp option delete 'psad_es_shop_bt_font'
wp option delete 'psad_es_shop_link_font'
wp option delete 'psad_es_category_item_bt_font'
wp option delete 'psad_es_category_item_link_font'
wp option delete 'psad_es_shop_bt_border'
wp option delete 'psad_es_shop_bt_border_width'
wp option delete 'psad_es_shop_bt_border_style'
wp option delete 'psad_es_shop_bt_border_color'
wp option delete 'psad_es_shop_bt_rounded'
wp option delete 'psad_es_shop_bt_font_size'
wp option delete 'psad_es_shop_bt_font_family'
wp option delete 'psad_es_shop_bt_font_style'
wp option delete 'psad_es_shop_bt_font_color'
wp option delete 'psad_es_shop_link_font_size'
wp option delete 'psad_es_shop_link_font_family'
wp option delete 'psad_es_shop_link_font_style'
wp option delete 'psad_es_shop_link_font_color'
wp option delete 'psad_es_category_bt_border'
wp option delete 'psad_es_category_bt_border_width'
wp option delete 'psad_es_category_bt_border_style'
wp option delete 'psad_es_category_bt_border_color'
wp option delete 'psad_es_category_bt_rounded'
wp option delete 'psad_es_category_bt_font'
wp option delete 'psad_es_category_bt_font_size'
wp option delete 'psad_es_category_bt_font_family'
wp option delete 'psad_es_category_bt_font_style'
wp option delete 'psad_es_category_bt_font_color'
wp option delete 'psad_es_category_link_font'
wp option delete 'psad_es_category_link_font_size'
wp option delete 'psad_es_category_link_font_family'
wp option delete 'psad_es_category_link_font_style'
wp option delete 'psad_es_category_link_font_color'
wp option delete 'psad_es_products_bt_border'
wp option delete 'psad_es_products_bt_border_width'
wp option delete 'psad_es_products_bt_border_style'
wp option delete 'psad_es_products_bt_border_color'
wp option delete 'psad_es_products_bt_rounded'
wp option delete 'psad_es_products_bt_font'
wp option delete 'psad_es_products_bt_font_size'
wp option delete 'psad_es_products_bt_font_family'
wp option delete 'psad_es_products_bt_font_style'
wp option delete 'psad_es_products_bt_font_color'
wp option delete 'psad_es_products_link_font'
wp option delete 'psad_es_products_link_font_size'
wp option delete 'psad_es_products_link_font_family'
wp option delete 'psad_es_products_link_font_style'
wp option delete 'psad_es_products_link_font_color'
wp option delete 'psad_es_category_item_bt_border'
wp option delete 'psad_es_category_item_bt_border_width'
wp option delete 'psad_es_category_item_bt_border_style'
wp option delete 'psad_es_category_item_bt_border_color'
wp option delete 'psad_es_category_item_bt_rounded'
wp option delete 'psad_es_category_item_bt_font_size'
wp option delete 'psad_es_category_item_bt_font_family'
wp option delete 'psad_es_category_item_bt_font_style'
wp option delete 'psad_es_category_item_bt_font_color'
wp option delete 'psad_es_category_item_link_font_size'
wp option delete 'psad_es_category_item_link_font_family'
wp option delete 'psad_es_category_item_link_font_style'
wp option delete 'psad_es_category_item_link_font_color'
wp option delete 'psad_seperator_border'
wp option delete 'psad_seperator_border_width'
wp option delete 'psad_seperator_border_style'
wp option delete 'psad_seperator_border_color'
wp option delete 'psad_seperator_padding_top'
wp option delete 'psad_seperator_padding_tb'
wp option delete 'psad_seperator_padding_bottom'
wp option delete 'psad_count_meta_font'
wp option delete 'psad_count_meta_font_size'
wp option delete 'psad_count_meta_font_family'
wp option delete 'psad_count_meta_font_style'
wp option delete 'psad_count_meta_font_color'
wp option delete 'psad_queries_cached_enable'
wp option delete 'psad_shop_page_enable'
wp option delete 'psad_endless_scroll_category_shop'
wp option delete 'psad_shop_enable_product_showing_count'
wp option delete 'psad_shop_product_per_page'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'psad_shop_category_per_page'
wp option delete 'psad_es_category_item_bt_type'
wp option delete 'psad_es_category_item_link_text'
wp option delete 'psad_es_category_item_bt_position'
wp option delete 'psad_es_category_item_bt_text'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'psad_shop_drill_down'
wp option delete 'psad_endless_scroll_category_shop_tyle'
wp option delete 'psad_es_shop_bt_type'
wp option delete 'psad_es_shop_link_text'
wp option delete 'psad_es_shop_bt_text'
wp option delete 'psad_es_shop_bt_align'
wp option delete 'psad_es_shop_bt_bg'
wp option delete 'psad_es_shop_bt_bg_from'
wp option delete 'psad_es_shop_bt_bg_to'
wp option delete 'psad_es_shop_link_align'
wp option delete 'psad_es_shop_link_font_hover_color'
wp option delete 'psad_es_shop_bt_shadow'
wp option delete 'psad_es_shop_bt_padding_tb'
wp option delete 'psad_es_shop_bt_padding_lr'
wp option delete 'psad_es_shop_bt_margin_top'
wp option delete 'psad_es_shop_bt_margin_bottom'
wp option delete 'psad_es_shop_link_margin_top'
wp option delete 'psad_es_shop_link_margin_bottom'
wp option delete 'psad_es_category_item_bt_align'
wp option delete 'psad_es_category_item_bt_bg'
wp option delete 'psad_es_category_item_bt_bg_from'
wp option delete 'psad_es_category_item_bt_bg_to'
wp option delete 'psad_es_category_item_link_align'
wp option delete 'psad_es_category_item_link_font_hover_color'
wp option delete 'psad_es_view_all_bt_shadow'
wp option delete 'psad_es_view_all_bt_padding_tb'
wp option delete 'psad_es_view_all_bt_padding_lr'
wp option delete 'psad_seperator_enable'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_toggle_box_open'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-custom-boxes'"
wp option delete 'psad_category_page_enable'
wp option delete 'psad_tag_page_enable'
wp option delete 'psad_cat_enable_product_showing_count'
wp option delete 'psad_category_per_page'
wp option delete 'psad_product_per_page'
wp option delete 'psad_category_product_nosub_per_page'
wp option delete 'psad_tag_product_per_page'
wp option delete 'psad_top_product_per_page'
wp option delete 'psad_shop_product_show_type'
wp option delete 'psad_product_show_type'
wp option delete 'psad_tag_product_show_type'
wp option delete 'psad_endless_scroll_category'
wp option delete 'psad_endless_scroll_category_tyle'
wp option delete 'psad_endless_scroll_tag'
wp option delete 'psad_endless_scroll_tag_tyle'
wp option delete 'psad_es_shop_bt_class'
wp option delete 'psad_es_category_bt_type'
wp option delete 'psad_es_category_bt_align'
wp option delete 'psad_es_category_bt_text'
wp option delete 'psad_es_category_bt_bg'
wp option delete 'psad_es_category_bt_bg_from'
wp option delete 'psad_es_category_bt_bg_to'
wp option delete 'psad_es_category_bt_class'
wp option delete 'psad_es_category_link_align'
wp option delete 'psad_es_category_link_text'
wp option delete 'psad_es_category_link_font_hover_color'
wp option delete 'psad_es_category_item_bt_class'
wp option delete 'psad_count_meta_view_all_parent_products_align'
wp option delete 'psad_es_products_bt_type'
wp option delete 'psad_es_products_bt_align'
wp option delete 'psad_es_products_bt_text'
wp option delete 'psad_es_tag_products_bt_text'
wp option delete 'psad_es_products_bt_bg'
wp option delete 'psad_es_products_bt_bg_from'
wp option delete 'psad_es_products_bt_bg_to'
wp option delete 'psad_es_products_bt_class'
wp option delete 'psad_es_products_link_align'
wp option delete 'psad_es_products_link_text'
wp option delete 'psad_es_tag_products_link_text'
wp option delete 'psad_es_products_link_font_hover_color'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_status' OR option_name LIKE '_site_transient_%_status'"
wp transient delete 'wc_term_counts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psad_shop_product_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psad_shop_product_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psad_shop_product_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psad_shop_product_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psad_shop_product_show_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psad_shop_product_show_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psad_shop_product_show_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psad_shop_product_show_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psad_include_shop_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psad_include_shop_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psad_include_shop_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psad_include_shop_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_psad_featured_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_psad_featured_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_psad_featured_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_psad_featured_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_psad_onsale_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_psad_onsale_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_psad_onsale_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_psad_onsale_order'"
