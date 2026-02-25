#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webmention_avatars'
wp option delete 'webmention_avatar_store_enable'
wp option delete 'webmention_disable_selfpings_same_url'
wp option delete 'webmention_disable_selfpings_same_domain'
wp option delete 'webmention_send_media_mentions'
wp option delete 'webmention_db_version'
wp option delete 'webmention_support_post_types'
wp option delete 'webmention_separate_comment'
wp option delete 'webmention_comment_form_text'
wp option delete 'webmention_home_mentions'
wp option delete 'webmention_approve_domains'
wp option delete 'webmention_show_comment_form'
wp option delete 'webmention_facepile_fold_limit'

# Clear Cron Jobs
wp cron event delete 'webmention_process_schedule'
wp cron event delete 'do_pings'
wp cron event delete 'webmention_delete'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'protocol'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'protocol'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'protocol'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'protocol'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'semantic_linkbacks_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'semantic_linkbacks_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'semantic_linkbacks_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'semantic_linkbacks_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webmention_canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webmention_canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webmention_canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webmention_canonical_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webmentioned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webmentioned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webmentioned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webmentioned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mentionme_tries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mentionme_tries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mentionme_tries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mentionme_tries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mentionme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mentionme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mentionme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mentionme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mf2_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mf2_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mf2_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mf2_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webmention_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webmention_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webmention_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webmention_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webmention_target_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webmention_target_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webmention_target_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webmention_target_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webmention_created_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webmention_created_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webmention_created_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webmention_created_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webmentions_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webmentions_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webmentions_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webmentions_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webmentions_disabled_pings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webmentions_disabled_pings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webmentions_disabled_pings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webmentions_disabled_pings'"
