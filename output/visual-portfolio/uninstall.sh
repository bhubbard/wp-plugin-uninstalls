#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'visual_portfolio_updated_caps'
wp option delete 'fusion_options'
wp option delete 'portfolio_permalinks'
wp option delete '_vp_add_archive_page'
wp option delete '_vp_trying_to_add_archive_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_state'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_time'"
wp option delete 'active_sitewide_plugins'
wp option delete 'visual_portfolio_items_count_notice_state'
wp option delete 'vpf_db_version'
wp option delete 'vp_general'
wp option delete 'vp_images'
wp option delete 'vp_popup_gallery'

# Delete Transients
wp transient delete 'vp_flush_rewrite_rules'
wp transient delete '_visual_portfolio_welcome_screen_activation_redirect'
wp transient delete 'vp_deactivated_notice_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vp_post_type_mapped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vp_post_type_mapped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vp_post_type_mapped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vp_post_type_mapped'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vp_format_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vp_format_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vp_format_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vp_format_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vp_image_focal_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vp_image_focal_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vp_image_focal_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vp_image_focal_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vp_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vp_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vp_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vp_views_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vp_words_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vp_words_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vp_words_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vp_words_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vp_content_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vp_content_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vp_content_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vp_content_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vp_posts_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vp_posts_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vp_posts_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vp_posts_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'vp_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'vp_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'vp_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'vp_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vp_layout_elements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vp_layout_elements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vp_layout_elements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vp_layout_elements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vp_filter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vp_filter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vp_filter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vp_filter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vp_sort'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vp_sort'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vp_sort'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vp_sort'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vp_pagination_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vp_pagination_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vp_pagination_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vp_pagination_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vp_items_click_action_popup_title_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vp_items_click_action_popup_title_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vp_items_click_action_popup_title_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vp_items_click_action_popup_title_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vp_items_click_action_popup_description_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vp_items_click_action_popup_description_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vp_items_click_action_popup_description_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vp_items_click_action_popup_description_source'"
