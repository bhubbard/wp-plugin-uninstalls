#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rfi_pa_image'
wp option delete 'rfi_po_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_remove_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_remove_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_remove_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_remove_featured_image'"
