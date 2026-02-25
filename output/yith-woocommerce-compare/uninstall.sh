#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yith_woocompare_show_table'
wp option delete 'yith_woocompare_button_text'
wp option delete 'yith_woocompare_show_compare_button_in'
wp option delete 'yith_woocompare_is_button'
wp option delete 'yith_woocompare_version'
wp option delete 'yith_woocompare_image_size'
wp option delete 'yith_woocompare_compare_button_in_product_page'
wp option delete 'yith_woocompare_compare_button_in_products_list'
wp option delete 'yith_woocompare_auto_open'
wp option delete 'yith_woocompare_open_after_second'
wp option delete 'yith_woocompare_excluded_category'
wp option delete 'yith_woocompare_excluded_category_inverse'
wp option delete 'yith_woocompare_include_by_category'
wp option delete 'yith_woocompare_included_categories'
wp option delete 'yith-woocompare-table-image-in-popup'
wp option delete 'yith-woocompare-table-image-in-page'
wp option delete 'yith_woocompare_show_image_table_in'
wp option delete 'yith-woocompare-share-in-popup'
wp option delete 'yith-woocompare-share-in-page'
wp option delete 'yith_woocompare_show_share_in'
wp option delete 'yith-woocompare-related-in-popup'
wp option delete 'yith-woocompare-related-in-page'
wp option delete 'yith_woocompare_show_related_in'
wp option delete 'yith_woocompare_num_product_compared'
wp option delete 'yith_woocompare_should_limit_comparison'
wp option delete 'yith_woocompare_num_fixedcolumns'
wp option delete 'yith_woocompare_has_fixed_columns'
wp option delete 'yith-woocompare-related-autoplay'
wp option delete 'yith-woocompare-related-navigation'
wp option delete 'yith_woocompare_related_slider_options'
wp option delete 'yith_woocompare_fields'
wp option delete 'yith_woocompare_fields_product_info_title'
wp option delete 'yith_woocompare_fields_product_info_image'
wp option delete 'yith_woocompare_fields_product_info_add_cart'
wp option delete 'yith_woocompare_price_end'
wp option delete 'yith_woocompare_add_to_cart_end'
wp option delete 'yith_woocompare_use_full_description'
wp option delete 'woocommerce_weight_unit'
wp option delete 'yith_woocompare_replace_stock_labels_with_icons'
wp option delete 'yith_woocompare_table_text'
wp option delete 'yith_woocompare_table_description'
wp option delete 'yith_woocompare_table_image_format'
wp option delete 'yith_woocompare_button_text_added'
wp option delete 'yit_font_awesome_list'
wp option delete 'yit_dashicons_list'
wp option delete 'yit_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'yit_recently_activated'
wp option delete 'yith_system_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id'"

# Delete Transients
wp transient delete 'yith-plugin-fw-latest-hc-articles'
wp transient delete 'yith-plugin-fw-system-status-tls-version'
wp transient delete 'yith-plugin-fw-system-status-output-ip'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yith_woocompare_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yith_woocompare_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yith_woocompare_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yith_woocompare_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yith_woocompare_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yith_woocompare_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yith_woocompare_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yith_woocompare_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"
