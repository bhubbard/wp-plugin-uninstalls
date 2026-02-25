#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_purchaseId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_purchaseId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_purchaseId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_purchaseId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_merchantReferenceId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_merchantReferenceId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_merchantReferenceId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_merchantReferenceId'"
