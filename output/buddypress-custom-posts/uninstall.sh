#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rss_language'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bpcp_forum_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bpcp_forum_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bpcp_forum_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bpcp_forum_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bpcp_last_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bpcp_last_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bpcp_last_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bpcp_last_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
