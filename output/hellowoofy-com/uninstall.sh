#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mws_google_analytic_id'
wp option delete 'mws_enable'
wp option delete 'mws_select_page'
wp option delete 'mws_select_position'
wp option delete 'mws_default_webstory_icon'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'story_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'story_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'story_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'story_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mws_webstory_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mws_webstory_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mws_webstory_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mws_webstory_pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_source_url'"
