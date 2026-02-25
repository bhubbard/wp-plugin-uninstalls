#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tzc_welcome'

# Delete Transients
wp transient delete 'tzc_activation_redirect_transient'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings'"
