#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'rwwcl_total_converted'
wp transient delete 'rwwcl_total_saved_bytes'
wp transient delete 'rwwcl_last_converted'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rwwcl_skipped_small'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rwwcl_skipped_small'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rwwcl_skipped_small'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rwwcl_skipped_small'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rwwcl_converted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rwwcl_converted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rwwcl_converted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rwwcl_converted'"
