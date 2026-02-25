#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'azh-library'
wp option delete 'azh-all-settings'
wp option delete 'azh-get-content-scripts'
wp option delete 'azh-content-settings'
wp option delete 'azh-forms-settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_title'"
