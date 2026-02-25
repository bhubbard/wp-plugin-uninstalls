#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'filepicker_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'filepicker_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'filepicker_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'filepicker_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'filepicker_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
