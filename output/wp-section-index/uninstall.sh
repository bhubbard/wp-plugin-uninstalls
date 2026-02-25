#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"
wp option delete 'wpsi_tag'
wp option delete 'wpsi_use_pages'
wp option delete 'wpsi_use_posts'
wp option delete 'wpsi_use_backtotop'
wp option delete 'wpsi_backtotop_id'
wp option delete 'wpsi_display_all_anchors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsi_disable_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsi_disable_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsi_disable_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsi_disable_index'"
