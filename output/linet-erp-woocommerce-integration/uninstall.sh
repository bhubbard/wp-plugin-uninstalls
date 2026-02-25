#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_linet_debug'
wp option delete 'wc_linet_warehouse_id'
wp option delete 'wc_linet_sale_pricelist_id'
wp option delete 'wc_linet_warehouse_stock_count'
wp option delete 'wc_linet_pricelist_account'
wp option delete 'wc_linet_syncField'
wp option delete 'wc_linet_syncValue'
wp option delete 'wc_linet_warehouse_exclude'
wp option delete 'wc_linet_syncCatField'
wp option delete 'wc_linet_syncCatValue'
wp option delete 'wc_linet_last_update'
wp option delete 'wc_linet_picsync'
wp option delete 'wc_linet_dev'
wp option delete 'wc_linet_rect_img'
wp option delete 'wc_linet_only_stock_manage'
wp option delete 'wc_linet_global_attr'
wp option delete 'wc_linet_no_description'
wp option delete 'wc_linet_old_attr'
wp option delete 'wc_linet_not_product_attributes'
wp option delete 'wc_linet_itemFields'
wp option delete 'wc_linet_stock_manage'
wp option delete 'wc_linet_consumer_id'
wp option delete 'wc_linet_consumer_key'
wp option delete 'wc_linet_company'
wp option delete 'wc_linet_sync_orders'
wp option delete 'wc_linet_linet_doc'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_linet_sync_orders_wc-%'"
wp option delete 'wc_linet_one_item_order'
wp option delete 'wc_linet_j5Token'
wp option delete 'wc_linet_j5Number'
wp option delete 'wc_linet_sku_find'
wp option delete 'wc_linet_genral_item'
wp option delete 'wc_linet_genral_acc'
wp option delete 'wc_linet_status'
wp option delete 'wc_linet_printview'
wp option delete 'wc_linet_autosend'
wp option delete 'wc_linet_autosendsms'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_linet_cf7%'"
wp option delete 'wc_linet_elementor_form'
wp option delete 'wc_linet_manual_linet_doc'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_linet_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_linet_ywapo%'"
wp option delete 'wc_linet_nonce'
wp option delete 'wc_linet_sync_items'
wp option delete '_transient_wc_attribute_taxonomies'
wp option delete 'wc_linet_income_acc'
wp option delete 'wc_linet_income_acc_novat'
wp option delete 'wc_linet_sync_back_status'
wp option delete 'wc_linet_last_sns'
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'linetItemSync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linet_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linet_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linet_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linet_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linet_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linet_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linet_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linet_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linet_last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linet_last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linet_last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linet_last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_count_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_count_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_count_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_count_product_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
