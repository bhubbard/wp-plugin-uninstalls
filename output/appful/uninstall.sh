#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'appful_session_id'
wp option delete 'appful_disable'
wp option delete 'appful_do_redirect'
wp option delete 'appful_been_installed'
wp option delete 'appful_blog_id'
wp option delete 'appful_universallinks_ios'
wp option delete 'appful_universallinks_android'
wp option delete 'appful_invalid_session'
wp option delete 'appful_ssl_available'
wp option delete 'appful_server_id'
wp option delete 'appful_disable_ssl'
wp option delete 'appful_disable_curl'
wp option delete 'appful_disable_fopen'
wp option delete 'appful_last_ssl_check'
wp option delete 'appful_ssl_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'appful_taxonomy_image%'"
wp option delete 'appful_allow_commentflood'
wp option delete 'appful_widget_apps'
wp option delete 'appful_widget_branding'
wp option delete 'appful_ip'
wp option delete 'appful_register_last_refresh'
wp option delete 'appful_cache_register_interval'
wp option delete 'appful_cache_last_refresh'
wp option delete 'appful_cache_fill_interval'
wp option delete 'appful_quickconnect_session_id'
wp option delete 'disqus_active'
wp option delete 'disqus_forum_url'
wp option delete 'appful_enabled_shortcodes'
wp option delete 'appful_disabled_shortcodes'
wp option delete 'appful_smart_banner'
wp option delete 'appful_overlay_banner'
wp option delete 'appful_cached_post_types'
wp option delete 'appful_quickconnect_id'
wp option delete 'appful_push_default'
wp option delete 'appful_user'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post-likes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post-likes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post-likes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post-likes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post-dislikes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post-dislikes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post-dislikes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post-dislikes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'appful-no-push'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'appful-no-push'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'appful-no-push'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'appful-no-push'"
