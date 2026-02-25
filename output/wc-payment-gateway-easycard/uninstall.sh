#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rate_percent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rate_percent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rate_percent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rate_percent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ecngallowrefund'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ecngallowrefund'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ecngallowrefund'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ecngallowrefund'"
