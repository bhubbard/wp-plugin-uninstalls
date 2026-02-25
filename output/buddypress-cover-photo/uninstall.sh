#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fileupload_maxk'
wp option delete 'bpcp-profile-default'
wp option delete 'bpcp-group-default'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_cover_file_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_cover_file_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_cover_file_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_cover_file_path'"
