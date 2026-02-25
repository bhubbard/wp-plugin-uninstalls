#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'proler_role_table'
wp option delete 'proler_rating'
wp option delete 'proler_notify_pro'
wp option delete 'woocommerce_tax_display_shop'

# Delete Transients
wp transient delete 'proler_admin_cache'
wp transient delete 'proler_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'proler_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'proler_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'proler_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'proler_data'"
