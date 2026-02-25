#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CComment_fields'
wp option delete 'CComment_comments_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'CuCo_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'CuCo_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'CuCo_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'CuCo_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'CuCo%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'CuCo%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'CuCo%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'CuCo%'"
