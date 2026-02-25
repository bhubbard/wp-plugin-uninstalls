#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_custom_orders_table_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%transaction_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%transaction_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%transaction_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%transaction_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_li_watermark_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_li_watermark_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_li_watermark_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_li_watermark_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_li_lemoninkable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_li_lemoninkable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_li_lemoninkable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_li_lemoninkable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_li_master_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_li_master_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_li_master_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_li_master_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable_files'"
