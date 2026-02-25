#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'drt_scp_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scp_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scp_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scp_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scp_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scp_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scp_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scp_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scp_image'"
