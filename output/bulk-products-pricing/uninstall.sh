#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aicoso_bulk_prod_price_plugin_enable'
wp option delete '_aicoso_bulk_prod_price_bulk_prod_price_cats_ids'
wp option delete '_aicoso_bulk_prod_price_bulk_prod_price_products_ids'
wp option delete 'aicoso_bulk_prod_price_tax_enable'
wp option delete 'aicoso_bulk_prod_price_ftable_enable'
wp option delete '_aicoso_bulk_prod_price_cats_ids'
wp option delete '_aicoso_bulk_prod_price_selected_products_id'
wp option delete '_aicoso_bulk_prod_price_qty_min_max'
wp option delete '_aicoso_bulk_prod_price_products_ids'
wp option delete 'aicoso_bulk_prod_price_table_thead_border'
wp option delete 'aicoso_bulk_prod_price_table_thead_bg'
wp option delete 'aicoso_bulk_prod_price_table_thead_text'
wp option delete 'aicoso_bulk_prod_price_table_tbody_border'
wp option delete 'aicoso_bulk_prod_price_table_tbody_bg'
wp option delete 'aicoso_bulk_prod_price_table_tbody_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicoso_bulk_prod_price_per_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicoso_bulk_prod_price_per_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicoso_bulk_prod_price_per_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicoso_bulk_prod_price_per_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicoso_bulk_prod_price_quantity_pricing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicoso_bulk_prod_price_quantity_pricing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicoso_bulk_prod_price_quantity_pricing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicoso_bulk_prod_price_quantity_pricing'"
