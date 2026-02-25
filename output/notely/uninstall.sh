#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notely_settings'

# Delete Transients
wp transient delete 'notely-admin-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notely'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notely'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notely'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notely'"
