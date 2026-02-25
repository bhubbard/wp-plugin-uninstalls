#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdocs_versions_type'
wp option delete 'wpdocs_options'
wp option delete 'wpdocs_view'
wp option delete 'wpdocs_memphis_uninstall'
wp option delete 'wpdocs_clear_clutter'
wp option delete 'mdocs-cats'
wp option delete 'wpdocs_imported_folder'
wp option delete 'wpdocs_imported_files'
wp option delete 'mdocs-list'
wp option delete 'wpdocs_memphis_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdocs_security'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdocs_security'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdocs_security'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdocs_security'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdocs_items_by_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdocs_items_by_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdocs_items_by_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdocs_items_by_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdocs_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdocs_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdocs_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdocs_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdocs_dir_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdocs_dir_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdocs_dir_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdocs_dir_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdocs_memphis_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdocs_memphis_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdocs_memphis_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdocs_memphis_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdocs_memphis_media_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdocs_memphis_media_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdocs_memphis_media_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdocs_memphis_media_file'"
