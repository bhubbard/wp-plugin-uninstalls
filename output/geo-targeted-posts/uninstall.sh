#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gtp_post_list'
wp option delete 'gtp_post_list_posttypes'
wp option delete 'gtp_frontpage_posts'
wp option delete 'gtp_simulate_location'
wp option delete 'gtp_plugin_active'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gtp_countries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gtp_countries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gtp_countries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gtp_countries'"
