#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_bbp_converter_convert_users'
wp option delete '_bbp_converter_halt'
wp option delete '_bbp_converter_rows'
wp option delete '_bbp_converter_db_user'
wp option delete '_bbp_converter_db_pass'
wp option delete '_bbp_converter_db_name'
wp option delete '_bbp_converter_db_server'
wp option delete '_bbp_converter_db_port'
wp option delete '_bbp_converter_db_prefix'
wp option delete '_bbp_converter_query'
wp option delete '_bbp_converter_rows_in_step'
wp option delete '_bbp_converter_delay_time'
wp option delete '_bbp_converter_step'
wp option delete '_bbp_converter_start'
wp option delete '_bbp_converter_platform'
wp option delete '_bbp_group_forums_root_id'
wp option delete '_bbp_converter_restart'
wp option delete '_bbp_converter_clean'
wp option delete '_bbp_throttle_time'
wp option delete '_bbp_forums_per_page'
wp option delete '_bbp_db_version'
wp option delete 'rewrite_rules'
wp option delete '_bbp_enable_favorites'
wp option delete '_bbp_enable_subscriptions'
wp option delete '_bbp_enable_engagements'
wp option delete '_bbp_allow_content_edit'
wp option delete '_bbp_allow_content_throttle'
wp option delete '_bbp_allow_topic_tags'
wp option delete '_bbp_allow_forum_mods'
wp option delete '_bbp_allow_super_mods'
wp option delete '_bbp_allow_search'
wp option delete '_bbp_allow_threaded_replies'
wp option delete '_bbp_thread_replies_depth'
wp option delete '_bbp_allow_revisions'
wp option delete '_bbp_allow_anonymous'
wp option delete '_bbp_allow_global_access'
wp option delete '_bbp_default_role'
wp option delete '_bbp_use_wp_editor'
wp option delete '_bbp_use_autoembed'
wp option delete '_bbp_theme_package_id'
wp option delete '_bbp_title_max_length'
wp option delete '_bbp_edit_lock'
wp option delete '_bbp_enable_group_forums'
wp option delete '_bbp_enable_akismet'
wp option delete '_bbp_settings_integration'
wp option delete '_bbp_engagements_strategy'
wp option delete '_bbp_root_slug'
wp option delete '_bbp_include_root'
wp option delete '_bbp_show_on_root'
wp option delete '_bbp_forum_slug'
wp option delete '_bbp_topic_archive_slug'
wp option delete '_bbp_reply_archive_slug'
wp option delete '_bbp_topic_slug'
wp option delete '_bbp_topic_tag_slug'
wp option delete '_bbp_reply_slug'
wp option delete '_bbp_user_slug'
wp option delete '_bbp_user_favs_slug'
wp option delete '_bbp_user_subs_slug'
wp option delete '_bbp_user_engs_slug'
wp option delete '_bbp_view_slug'
wp option delete '_bbp_search_slug'
wp option delete '_bbp_edit_slug'
wp option delete 'bb-config-location'
wp option delete '_bbp_flag_initial_content'
wp option delete '_bbp_db_pending_upgrades'
wp option delete 'akismet_strictness'
wp option delete 'akismet_ssl_disabled'
wp option delete '_bbp_private_forums'
wp option delete '_bbp_hidden_forums'
wp option delete '_bbp_replies_per_page'
wp option delete '_bbp_replies_per_rss_page'
wp option delete '_bbp_super_sticky_topics'
wp option delete '_bbp_topics_per_page'
wp option delete '_bbp_topics_per_rss_page'
wp option delete 'site_name'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_last_posted' OR option_name LIKE '_site_transient_%_last_posted'"

# Clear Cron Jobs
wp cron event delete 'akismet_scheduled_delete'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_reply_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_reply_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_reply_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_reply_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_anonymous_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_anonymous_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_anonymous_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_anonymous_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_anonymous_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_anonymous_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_anonymous_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_anonymous_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_anonymous_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_anonymous_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_anonymous_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_anonymous_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_author_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_author_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_author_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_author_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_sticky_topics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_sticky_topics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_sticky_topics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_sticky_topics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_group_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_group_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_group_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_group_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_topic_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_topic_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_topic_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_topic_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_reply_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_reply_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_reply_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_reply_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_akismet_as_submitted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_akismet_as_submitted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_akismet_as_submitted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_akismet_as_submitted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_akismet_user_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_akismet_user_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_akismet_user_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_akismet_user_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_akismet_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_akismet_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_akismet_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_akismet_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_akismet_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_akismet_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_akismet_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_akismet_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_akismet_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_akismet_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_akismet_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_akismet_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_akismet_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_akismet_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_akismet_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_akismet_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_akismet_spam_terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_akismet_spam_terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_akismet_spam_terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_akismet_spam_terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_activity_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_activity_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_activity_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_activity_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_spam_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_spam_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_spam_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_spam_meta_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_forum_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_forum_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_forum_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_forum_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_topic_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_topic_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_topic_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_topic_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_total_topic_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_total_topic_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_total_topic_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_total_topic_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_topic_count_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_topic_count_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_topic_count_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_topic_count_hidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_total_topic_count_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_total_topic_count_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_total_topic_count_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_total_topic_count_hidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_reply_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_reply_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_reply_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_reply_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_total_reply_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_total_reply_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_total_reply_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_total_reply_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_reply_count_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_reply_count_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_reply_count_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_reply_count_hidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_total_reply_count_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_total_reply_count_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_total_reply_count_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_total_reply_count_hidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_last_topic_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_last_topic_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_last_topic_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_last_topic_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_last_reply_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_last_reply_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_last_reply_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_last_reply_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_last_active_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_last_active_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_last_active_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_last_active_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_forum_subforum_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_forum_subforum_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_forum_subforum_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_forum_subforum_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_pre_trashed_topics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_pre_trashed_topics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_pre_trashed_topics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_pre_trashed_topics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_pre_trashed_replies'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_pre_trashed_replies'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_pre_trashed_replies'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_pre_trashed_replies'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_pre_spammed_replies'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_pre_spammed_replies'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_pre_spammed_replies'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_pre_spammed_replies'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_revision_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_revision_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_revision_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_revision_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_voice_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_voice_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_voice_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_voice_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_favorite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_favorite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_favorite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_favorite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_engagement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_engagement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_engagement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_engagement'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_anonymous_reply_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_anonymous_reply_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_anonymous_reply_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_anonymous_reply_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_spam_topic_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_spam_topic_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_spam_topic_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_spam_topic_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_class'"
