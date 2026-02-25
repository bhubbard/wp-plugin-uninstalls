#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'heic_support_format'
wp option delete 'heic_support_replace'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_heic_support_copy_of'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_heic_support_copy_of'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_heic_support_copy_of'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_heic_support_copy_of'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
