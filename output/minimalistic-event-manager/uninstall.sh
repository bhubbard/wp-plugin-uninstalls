#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mem_post_types'
wp option delete 'mem_edit_mode'
wp option delete 'widget_mem_events_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mem_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mem_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mem_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mem_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mem_repeat_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mem_repeat_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mem_repeat_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mem_repeat_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mem_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mem_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mem_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mem_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_date'"
