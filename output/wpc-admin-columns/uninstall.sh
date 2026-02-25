#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcac_settings'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcac_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpcac_get_users_meta_keys_%' OR option_name LIKE '_site_transient_wpcac_get_users_meta_keys_%'"
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpcac_intro_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpcac_intro_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpcac_intro_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpcac_intro_%'"
