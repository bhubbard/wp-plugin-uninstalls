#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ema_plugin_version'
wp option delete 'mastodon_api_enable_debug'
wp option delete 'mastodon_api_disable_logins'
wp option delete 'mastodon_api_default_create_post_format'
wp option delete 'mastodon_api_posting_cpt'
wp option delete 'mastodon_api_disable_ema_announcements'
wp option delete 'mastodon_api_disable_ema_app_settings_changes'
wp option delete 'mastodon_api_debug_mode'
wp option delete 'mastodon_api_auto_app_reregister'
wp option delete 'rewrite_rules'
wp option delete 'blogdescription_updated_at'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mastodon_reblog_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mastodon_reblog_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mastodon_reblog_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mastodon_reblog_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'redirect_uris'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'redirect_uris'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'redirect_uris'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'redirect_uris'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scopes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scopes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scopes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scopes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'creation_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'creation_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'creation_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'creation_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'query_args'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'query_args'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'query_args'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'query_args'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'create_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'create_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'create_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'create_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'create_post_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'create_post_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'create_post_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'create_post_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'view_post_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'view_post_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'view_post_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'view_post_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ema_app_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ema_app_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ema_app_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ema_app_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ema_dm_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ema_dm_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ema_dm_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ema_dm_ids'"
