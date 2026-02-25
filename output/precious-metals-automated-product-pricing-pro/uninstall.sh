#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nfs_plugin_install_date'
wp option delete 'nfusion_enable_product_reindexing'
wp option delete 'nfusion_prev_product_reindexing_interval'
wp option delete 'nfusion_product_reindexing_interval'
wp option delete 'nfusion_tenant_alias'
wp option delete 'nfusion_api_token'
wp option delete 'nfusion_sales_channel'
wp option delete 'nfusion_price_update_interval'
wp option delete 'nfusion_low_price_label'
wp option delete 'nfusion_show_buy_price'
wp option delete 'nfusion_buy_price_label'
wp option delete 'nfusion_show_tiered_pricing'
wp option delete 'nfusion_pricing_check_label'
wp option delete 'nfusion_show_credit_card_price'
wp option delete 'nfusion_pricing_card_label'
wp option delete 'nfusion_cc_price'
wp option delete 'nfusion_use_wholesale_price'
wp option delete 'nfs_attributes_seeded'
wp option delete 'nfs_last_invalid_products'
wp option delete 'nfusion_arr_affinity_cookie'
wp option delete 'nfusion_arr_affinity_samesite_cookie'
wp option delete 'nfs_sales_channels'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'
wp transient delete 'nfs_missing_required_metadata'
wp transient delete 'nfs_product_settings_upsert_result'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nfs_weight_uom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nfs_weight_uom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nfs_weight_uom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nfs_weight_uom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nfs_catalog_plugin_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nfs_catalog_plugin_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nfs_catalog_plugin_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nfs_catalog_plugin_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
