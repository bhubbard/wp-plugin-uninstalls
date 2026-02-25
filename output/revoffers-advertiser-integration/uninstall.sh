#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'revoffers_site_id'
wp option delete 'revoffers_use_cron'
wp option delete 'revoffers_real_order_id'
wp option delete 'woocommerce_weight_unit'
wp option delete 'revoffers_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_ip_address'"
