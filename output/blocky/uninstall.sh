#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blocky_tag'
wp option delete 'blocky_post_types'
wp option delete 'blocky_experimental_editor'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blocky_extra_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blocky_extra_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blocky_extra_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blocky_extra_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blocky_admin_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blocky_admin_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blocky_admin_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blocky_admin_notice_ignore'"
