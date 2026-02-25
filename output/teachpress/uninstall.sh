#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'dirsize_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tp_authors_sorting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tp_authors_sorting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tp_authors_sorting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tp_authors_sorting'"
