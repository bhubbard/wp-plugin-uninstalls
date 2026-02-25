#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_powerup_active_customizations'
wp option delete 'woocommerce_db_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'wc_powerup_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
