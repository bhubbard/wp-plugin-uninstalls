#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bsp_version'
wp option delete 'bsp_style_settings_f'
wp option delete 'bsp_templates'
wp option delete 'bsp_forum_display'
wp option delete 'bsp_forum_order'
wp option delete 'bsp_style_settings_freshness'
wp option delete 'bsp_breadcrumb'
wp option delete 'bsp_style_settings_buttons'
wp option delete 'bsp_login'
wp option delete 'bsp_login_fail'
wp option delete 'bsp_roles'
wp option delete 'bsp_style_settings_email'
wp option delete 'bsp_style_settings_sub_management'
wp option delete 'bsp_topic_order'
wp option delete 'bsp_style_settings_ti'
wp option delete 'bsp_style_settings_topic_preview'
wp option delete 'bsp_style_settings_t'
wp option delete 'bsp_settings_topic_count'
wp option delete 'bsp_style_settings_form'
wp option delete 'bsp_profile'
wp option delete 'bsp_style_settings_search'
wp option delete 'bsp_style_settings_unread'
wp option delete 'bsp_style_settings_quote'
wp option delete 'bsp_style_settings_modtools'
wp option delete 'bsp_style_settings_la'
wp option delete 'bsp_css_location'
wp option delete 'bsp_style_settings_translation'
wp option delete 'bsp_settings_admin'
wp option delete 'bsp_style_settings_bugs'
wp option delete 'bsp_style_settings_block_widgets'
wp option delete 'bsp_css'
wp option delete 'bsp_style_settings_theme_support'
wp option delete 'bsp_buddypress_support'
wp option delete 'bsp_style_settings_column_display'
wp option delete 'bsp_style_settings_topic_fields'
wp option delete 'bsp_bbpress_version'
wp option delete '_bbp_forums_per_page'
wp option delete '_bbp_show_on_root'
wp option delete '_bbp_user_slug'
wp option delete '_bbp_include_root'
wp option delete '_bbp_root_slug'
wp option delete '_bbp_topic_slug'
wp option delete 'bsp_translations'
wp option delete 'gd_system_last_cache_flush'
wp option delete '_bbp_email_login'
wp option delete '_bbp_email_login_type'
wp option delete '_bbp_login_url'
wp option delete 'disallowed_keys'
wp option delete 'bsp_mod_pending_page'
wp option delete 'bbp_unread_post_amount'
wp option delete 'bsp_style_generation'
wp option delete 'bsp_style_quote_generation'
wp option delete 'bsp_delete_js_generation'
wp option delete '_bbp_report_post'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"
wp option delete '_bbp_moderation_type'
wp option delete '_bbp_moderation_custom'
wp option delete '_bbp_active_notification_post_held'
wp option delete '_bbp_moderation_post_types'
wp option delete '_bbp_blocked_page_id'
wp option delete '_bbp_moderation_english_threshold'
wp option delete '_bbp_notify_moderator '
wp option delete '_bbp_notify_keymaster'
wp option delete '_bbp_notify_email'
wp option delete '_bbp_active_notification_report_post'
wp option delete '_bbp_notify_moderator'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_last_reply_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_last_reply_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_last_reply_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_last_reply_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bsp_forum_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bsp_forum_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bsp_forum_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bsp_forum_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bsp_forum_thumbnailwidth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bsp_forum_thumbnailwidth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bsp_forum_thumbnailwidth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bsp_forum_thumbnailwidth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bsp_forum_thumbnailheight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bsp_forum_thumbnailheight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bsp_forum_thumbnailheight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bsp_forum_thumbnailheight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bsp_unread_optinout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bsp_unread_optinout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bsp_unread_optinout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bsp_unread_optinout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_last_active_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_last_active_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_last_active_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_last_active_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_anonymous_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_anonymous_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_anonymous_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_anonymous_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_akismet_user_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_akismet_user_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_akismet_user_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_akismet_user_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'bsp_topic_fields_label%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'bsp_topic_fields_label%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'bsp_topic_fields_label%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bsp_topic_fields_label%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'bsp_topic_fields_label_name%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'bsp_topic_fields_label_name%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'bsp_topic_fields_label_name%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bsp_topic_fields_label_name%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_moderation_flagged'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_moderation_flagged'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_moderation_flagged'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_moderation_flagged'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_moderation_link_found'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_moderation_link_found'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_moderation_link_found'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_moderation_link_found'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_link_moderation_approved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_link_moderation_approved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_link_moderation_approved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_link_moderation_approved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_moderation_ascii_found'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_moderation_ascii_found'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_moderation_ascii_found'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_moderation_ascii_found'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ascii_moderation_approved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ascii_moderation_approved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ascii_moderation_approved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ascii_moderation_approved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_reply_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_reply_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_reply_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_reply_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_reply_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_reply_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_reply_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_reply_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_modtools_post_report'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_modtools_post_report'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_modtools_post_report'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_modtools_post_report'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_modtools_post_report_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_modtools_post_report_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_modtools_post_report_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_modtools_post_report_count'"
