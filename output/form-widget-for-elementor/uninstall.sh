#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
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
