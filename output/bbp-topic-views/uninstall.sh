#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_btv_add_to'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_btv_view_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_btv_view_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_btv_view_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_btv_view_count'"
