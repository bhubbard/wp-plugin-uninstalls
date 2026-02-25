#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pcsfw_backed_up'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pcsfw_backed_up'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pcsfw_backed_up'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pcsfw_backed_up'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pcsfw_next_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pcsfw_next_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pcsfw_next_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pcsfw_next_product'"
