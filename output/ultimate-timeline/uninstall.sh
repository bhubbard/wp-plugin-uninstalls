#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weblizar_timeline_options'
wp option delete 'fa_icons'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wct_story_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wct_story_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wct_story_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wct_story_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wct_timeline_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wct_timeline_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wct_timeline_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wct_timeline_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fa_field_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fa_field_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fa_field_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fa_field_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wct_story_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wct_story_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wct_story_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wct_story_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wct_story_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wct_story_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wct_story_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wct_story_timestamp'"
