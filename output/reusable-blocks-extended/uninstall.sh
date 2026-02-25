#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'reblex_reusable_registered_stylesheets'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transformed_into_pattern'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transformed_into_pattern'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transformed_into_pattern'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transformed_into_pattern'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
