#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcpu_prices'

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcpu_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcpu_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcpu_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcpu_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcpu_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcpu_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcpu_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcpu_prices'"
