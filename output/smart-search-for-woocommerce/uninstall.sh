#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'woocommerce_enable_reviews'
wp option delete 'wcj_multicurrency_enabled'
wp option delete 'wcj_product_by_user_role_enabled'
wp option delete 'wcj_price_by_user_role_enabled'
wp option delete 'wcj_sorting_enabled'
wp option delete 'wcj_more_sorting_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_price_by_user_role_empty_price_%'"
wp option delete 'wcj_multicurrency_total_number'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_multicurrency_currency_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_multicurrency_exchange_rate_%'"
wp option delete 'wcj_product_by_user_role_visibility'
wp option delete 'se_search_field_id'
wp option delete 'se_use_resize_images'
wp option delete 'se_exported_attributes'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'cptui_taxonomies'
wp option delete 'se_custom_taxonomies'
wp option delete 'woocommerce_currency_pos'

# Delete Transients
wp transient delete 'old_value_weglot_langs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_by_user_role_visible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_by_user_role_visible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_by_user_role_visible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_by_user_role_visible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
