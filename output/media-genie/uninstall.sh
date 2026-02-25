#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'media_genie_disabled_image_sizes'
wp option delete 'media_genie_enable_retina'
wp option delete 'media_genie_rename_file'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_media_genie_default_folder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_media_genie_default_folder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_media_genie_default_folder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_media_genie_default_folder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
