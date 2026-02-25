#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'QuantiModo_settings'

# Delete Transients
wp transient delete 'fx-admin-notice-example'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qm_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qm_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qm_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qm_access_token'"
