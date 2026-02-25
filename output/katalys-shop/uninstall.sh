#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'revoffers_site_id'
wp option delete 'revoffers_use_cron'
wp option delete 'woocommerce_weight_unit'
wp option delete 'revoffers_db_version'
wp option delete 'katalys_shop_merchant'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_taxamt' OR option_name LIKE '_site_transient_%_taxamt'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_ip_address'"
