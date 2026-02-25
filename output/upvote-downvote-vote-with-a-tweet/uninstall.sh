#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'udv:globalOptions'
wp option delete 'udv:widgetOptions'
wp option delete 'udv:bannerOptions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udv_formID_main_topicid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udv_formID_main_topicid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udv_formID_main_topicid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udv_formID_main_topicid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udv_formID_main_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udv_formID_main_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udv_formID_main_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udv_formID_main_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udv_formID_main_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udv_formID_main_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udv_formID_main_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udv_formID_main_position'"
