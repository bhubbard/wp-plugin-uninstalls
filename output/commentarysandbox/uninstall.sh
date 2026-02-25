#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'commentpress_theme_settings'
wp option delete 'bp_groupblog_blog_defaults_options'
wp option delete 'default_post_edit_rows'
wp option delete 'commentpress_sidebars_widgets'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'commentpress_%'"
wp option delete 'commentpress_options'
wp option delete 'cp_options'
wp option delete 'cp_page_for_posts'
wp option delete 'commentpress_page_for_posts'
wp option delete 'cp_show_on_front'
wp option delete 'commentpress_show_on_front'
wp option delete 'cp_page_on_front'
wp option delete 'commentpress_page_on_front'
wp option delete 'cp_page_comments'
wp option delete 'commentpress_page_comments'
wp option delete 'cp_theme_settings'
wp option delete 'theme_mods_commentpress'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%'"
wp option delete 'cp_para_comments_enabled'
wp option delete 'cp_show_posts_or_pages_in_toc'
wp option delete 'cp_show_subpages'
wp option delete 'cp_toc_chapter_is_page'
wp option delete 'cp_comment_editor'
wp option delete 'cp_promote_reading'
wp option delete 'cp_title_visibility'
wp option delete 'cp_header_bg_colour'
wp option delete 'cp_js_scroll_speed'
wp option delete 'cp_min_page_width'
wp option delete 'cp_default_skin'
wp option delete 'cp_default_left_position'
wp option delete 'cp_default_top_position'
wp option delete 'cp_default_width'
wp option delete 'cp_default_height'
wp option delete 'cp_allow_users_to_iconize'
wp option delete 'cp_allow_users_to_minimize'
wp option delete 'cp_allow_users_to_resize'
wp option delete 'cp_allow_users_to_drag'
wp option delete 'cp_allow_users_to_save_position'
wp option delete 'cp_excerpt_length'
wp option delete 'cp_para_comments_live'
wp option delete 'cp_special_pages'
wp option delete 'cp_welcome_page'
wp option delete 'cp_general_comments_page'
wp option delete 'cp_all_comments_page'
wp option delete 'cp_comments_by_page'
wp option delete 'cp_blog_page'
wp option delete 'active_sitewide_plugins'
wp option delete 'cpmu_options'
wp option delete 'cpmu_version'
wp option delete 'registration'
wp option delete 'commentpress_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_editor_test_3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_editor_test_3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_editor_test_3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_editor_test_3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_editor_test_4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_editor_test_4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_editor_test_4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_editor_test_4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_editor_test_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_editor_test_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_editor_test_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_editor_test_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_editor_test_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_editor_test_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_editor_test_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_editor_test_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp_post_type_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp_post_type_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp_post_type_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp_post_type_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Vocabulary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Vocabulary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Vocabulary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Vocabulary'"
