#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gmk_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gmk_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gmk_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gmk_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gmk'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gmk'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gmk'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gmk'"
