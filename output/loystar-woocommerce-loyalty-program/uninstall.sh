#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_permalinks'
wp option delete 'wc_loystar_gokada_option_enable'

# Delete Transients
wp transient delete 'wc_loystar-sync-status'
wp transient delete 'wc_loystar-setting-total'
wp transient delete 'wc_loystar-setting-synced'
wp transient delete 'wc_loystar-sync-started-time'
wp transient delete 'wc_loystar-last-sync-error'
wp transient delete 'wc_loystar-sync-completed'
wp transient delete 'wc_ls_product_sync_total_synced'
wp transient delete 'wc_attribute_taxonomies'

# Clear Cron Jobs
wp cron event delete 'wc_loystar_sync_products_cron'
wp cron event delete 'wc_loystar_clear_sync_progress'
wp cron event delete 'woocommerce_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loystar_order_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loystar_order_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loystar_order_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loystar_order_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loystar_order_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loystar_order_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loystar_order_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loystar_order_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loystar_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loystar_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loystar_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loystar_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loystar_order_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loystar_order_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loystar_order_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loystar_order_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loystar_product_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loystar_product_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loystar_product_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loystar_product_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%'"
