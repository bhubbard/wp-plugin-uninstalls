#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prc_cat'
wp option delete 'prc_limited'
wp option delete 'prc_role'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_read_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_read_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_read_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_read_count'"
