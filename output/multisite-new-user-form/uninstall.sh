#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'multisite-new-user-form'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
