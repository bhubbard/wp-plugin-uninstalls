#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'csnp_clear_storage'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'csnp_sticky_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'csnp_sticky_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'csnp_sticky_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'csnp_sticky_notes'"
