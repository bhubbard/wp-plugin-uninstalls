-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('appful_session_id', 'appful_disable', 'appful_do_redirect', 'appful_been_installed', 'appful_blog_id', 'appful_universallinks_ios', 'appful_universallinks_android', 'appful_invalid_session', 'appful_ssl_available', 'appful_server_id', 'appful_disable_ssl', 'appful_disable_curl', 'appful_disable_fopen', 'appful_last_ssl_check', 'appful_ssl_error', 'appful_allow_commentflood', 'appful_widget_apps', 'appful_widget_branding', 'appful_ip', 'appful_register_last_refresh', 'appful_cache_register_interval', 'appful_cache_last_refresh', 'appful_cache_fill_interval', 'appful_quickconnect_session_id', 'disqus_active', 'disqus_forum_url', 'appful_enabled_shortcodes', 'appful_disabled_shortcodes', 'appful_smart_banner', 'appful_overlay_banner', 'appful_cached_post_types', 'appful_quickconnect_id', 'appful_push_default', 'appful_user');
DELETE FROM wp_options WHERE option_name LIKE 'appful_taxonomy_image%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('post-likes', 'post-dislikes', 'first_name', 'last_name', 'user_url', 'appful-no-push');
DELETE FROM wp_usermeta WHERE meta_key IN ('post-likes', 'post-dislikes', 'first_name', 'last_name', 'user_url', 'appful-no-push');
DELETE FROM wp_termmeta WHERE meta_key IN ('post-likes', 'post-dislikes', 'first_name', 'last_name', 'user_url', 'appful-no-push');
DELETE FROM wp_commentmeta WHERE meta_key IN ('post-likes', 'post-dislikes', 'first_name', 'last_name', 'user_url', 'appful-no-push');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar';

