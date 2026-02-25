#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wigzo_org_token'
wp option delete 'wigzo_pwa'
wp option delete 'wigzo_pwaData'
wp option delete 'wigzo_challenge'
wp option delete 'wigzo_orgId'
wp option delete 'wigzo_pwaFilesPath'
wp option delete 'wigzo_browserpush'
wp option delete 'wigzo_viahttps'
wp option delete 'wigzo_onsitepush'
wp option delete 'wigzo_token'
wp option delete 'wigzo_oauth'
wp option delete 'wigzo_client_id'
wp option delete 'wigzo_enabled'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wigzo_order_update_%' OR option_name LIKE '_site_transient_wigzo_order_update_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
