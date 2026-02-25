#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_i4swo_old_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_i4swo_old_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_i4swo_old_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_i4swo_old_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_i4swo_new_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_i4swo_new_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_i4swo_new_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_i4swo_new_size'"
