#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_details_%'"
wp option delete 'product_number'
wp option delete 'max_char_per_cat'
wp option delete 'column_number'
wp option delete 'selected_categories'
wp option delete 'qc_woo_tabbed_enable_category_image'
wp option delete 'qc_woo_tabbed_display_category_url_based'
wp option delete 'category_order'
wp option delete 'qcld_orderby_product'
wp option delete 'order_product_by'
wp option delete 'qcld_use_category_tab'
wp option delete 'qc_woo_tabbed_scroll_category_clickable'
wp option delete 'qc_woo_tabbed_shortcode_preview'
wp option delete 'qc_woo_tabbed_show_empty_category'
wp option delete 'qc_woo_tabbed_show_empty_category_msg'
wp option delete 'custom_global_css'
wp option delete 'woocommerce_db_version'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woo_tabbed_plugin_do_activation_redirect'
wp option delete 'qc_woo_tabbed_display_category_image_top'
wp option delete 'qcld_woo_minmax_dynamic_pricing_setting'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_currency'
wp option delete 'qcld_woo_minmax_category_quantity_limit'
wp option delete 'qcld_woo_minmax_tag_quantity_limit'
wp option delete 'qcld_woo_minmax_product_quantity_limit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_tag_minimum_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_tag_maximum_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_tag_step_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_category_minimum_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_category_maximum_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_category_step_%'"
wp option delete 'qcld_woo_minmax_product_minimum_quantity'
wp option delete 'qcld_woo_minmax_product_maximum_quantity'
wp option delete 'qcld_woo_minmax_product_step_quantity'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qcld_woo_minmax_category_exclusion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qcld_woo_minmax_category_exclusion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qcld_woo_minmax_category_exclusion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qcld_woo_minmax_category_exclusion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qcld_woo_minmax_tag_exclusion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qcld_woo_minmax_tag_exclusion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qcld_woo_minmax_tag_exclusion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qcld_woo_minmax_tag_exclusion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_limit_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_limit_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_limit_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_limit_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_minimum_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_minimum_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_minimum_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_minimum_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_maximum_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_maximum_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_maximum_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_maximum_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_step_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_step_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_step_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_step_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_minimum_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_category_minimum_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_minimum_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_minimum_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_maximum_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_category_maximum_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_maximum_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_maximum_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_step_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_category_step_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_step_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_step_%'"
