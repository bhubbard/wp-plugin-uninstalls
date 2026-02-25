#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'directorist_wpml_integration:current_language'
wp transient delete 'directorist_wpml_integration_before_change_current_language'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_directory_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_directory_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_directory_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_directory_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_default'"
