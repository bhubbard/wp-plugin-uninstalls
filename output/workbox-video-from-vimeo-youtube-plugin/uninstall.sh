#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'wb_video_VY_page_len'
wp option delete 'class_wb_video_pager'
wp option delete 'class_wb_video_pager_a'
wp option delete 'class_wb_video_container'
wp option delete 'class_wb_video_item'
wp option delete 'class_wb_video_image_link'
wp option delete 'class_wb_video_image_img'
wp option delete 'class_wb_video_title'
wp option delete 'class_wb_video_description'
wp option delete 'class_wb_video_count_in_line'
wp option delete 'wb_video_disable_play_button'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_db_upgraded' OR option_name LIKE '_site_transient_%_db_upgraded'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'sortorder%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'sortorder%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'sortorder%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sortorder%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_thumb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_thumb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_thumb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_thumb'"
