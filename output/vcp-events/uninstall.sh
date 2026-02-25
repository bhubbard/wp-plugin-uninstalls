#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_css'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vcp_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vcp_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vcp_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vcp_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vcp_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vcp_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vcp_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vcp_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vcp_comment_source_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vcp_comment_source_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vcp_comment_source_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vcp_comment_source_link'"
