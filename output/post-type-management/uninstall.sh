#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'ptmsf_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'data'"
