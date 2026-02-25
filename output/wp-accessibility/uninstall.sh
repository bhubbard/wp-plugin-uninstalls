#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rta_from_nav_menu'
wp option delete 'rta_from_page_lists'
wp option delete 'rta_from_category_lists'
wp option delete 'rta_from_archive_links'
wp option delete 'rta_from_tag_clouds'
wp option delete 'rta_from_category_links'
wp option delete 'rta_from_post_edit_links'
wp option delete 'rta_from_edit_comment_links'
wp option delete 'wpa_installed'
wp option delete 'wpa_version'
wp option delete 'asl_enable'
wp option delete 'asl_content'
wp option delete 'asl_navigation'
wp option delete 'asl_sitemap'
wp option delete 'asl_extra_target'
wp option delete 'asl_extra_text'
wp option delete 'asl_visible'
wp option delete 'asl_styles_focus'
wp option delete 'asl_styles_passive'
wp option delete 'wpa_lang'
wp option delete 'wpa_target'
wp option delete 'wpa_search'
wp option delete 'wpa_tabindex'
wp option delete 'wpa_more'
wp option delete 'wpa_continue'
wp option delete 'wpa_toolbar'
wp option delete 'wpa_diagnostics'
wp option delete 'wpa_longdesc'
wp option delete 'wpa_show_alt'
wp option delete 'wpa_underline'
wp option delete 'wpa_videos'
wp option delete 'wpa_insert_roles'
wp option delete 'wpa_focus'
wp option delete 'wpa_focus_color'
wp option delete 'wpa_complementary_container'
wp option delete 'wpa_search_alt'
wp option delete 'wpa_disable_fullscreen'
wp option delete 'wpa_disable_file_embed'
wp option delete 'wpa_allow_h1'
wp option delete 'wpa_track_stats'
wp option delete 'wpa_disable_logout'
wp option delete 'wpa_longdesc_featured'
wp option delete 'wpa_viewport'
wp option delete 'wpa_labels'
wp option delete 'wpa_lang_attributes'
wp option delete 'wpa_remove_titles'
wp option delete 'asl_default_styles'
wp option delete 'asl_styles'
wp option delete 'wpa_post_types'
wp option delete 'wpa_toolbar_size'
wp option delete 'wpa_alternate_fontsize'
wp option delete 'wpa_widget_toolbar'
wp option delete 'wpa_toolbar_gs'
wp option delete 'wpa_toolbar_fs'
wp option delete 'wpa_toolbar_ct'
wp option delete 'wpa_toolbar_default'
wp option delete 'wpa_toolbar_right'
wp option delete 'wpa_toolbar_mobile'
wp option delete 'wpa_show_playground_intro'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_no_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_no_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_no_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_no_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpa_event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpa_event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpa_event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpa_event'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpa_old_event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpa_old_event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpa_old_event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpa_old_event'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpa_browser'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpa_browser'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpa_browser'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpa_browser'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpa_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpa_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpa_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpa_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpa_stat_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpa_stat_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpa_stat_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpa_stat_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpa_content_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpa_content_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpa_content_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpa_content_summary'"
