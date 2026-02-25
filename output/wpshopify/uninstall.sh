#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shopwp_should_flush_rewrite_rules'
wp option delete 'has_upgraded_to_shop_pro'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_shopwp_table_charset_%' OR option_name LIKE '_site_transient_shopwp_table_charset_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'collection_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'collection_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'collection_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'collection_id'"
