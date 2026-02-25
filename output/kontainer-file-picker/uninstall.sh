#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kontainer_secret'
wp option delete 'kontainer_url'
wp option delete 'kontainer_secret_fragment'
wp option delete 'kontainer_use_api'
wp option delete 'fileupload_maxk'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kontainer_file_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kontainer_file_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kontainer_file_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kontainer_file_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kontainer_folder_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kontainer_folder_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kontainer_folder_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kontainer_folder_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kontainer_file_thumb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kontainer_file_thumb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kontainer_file_thumb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kontainer_file_thumb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kontainer_edit_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kontainer_edit_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kontainer_edit_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kontainer_edit_url'"
