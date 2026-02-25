#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_bacs_accounts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ga_tracked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ga_tracked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ga_tracked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ga_tracked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracked'"
