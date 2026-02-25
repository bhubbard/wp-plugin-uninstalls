#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'glmbso_activation_dates'
wp option delete 'glmbso_install_dates'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'glmbso_sort_preference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'glmbso_sort_preference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'glmbso_sort_preference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'glmbso_sort_preference'"
