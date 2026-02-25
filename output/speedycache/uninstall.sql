-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('speedycache_deletion_roles', 'softaculous_plugin_update_notice', 'speedycache_options', 'speedycache_object_cache', 'speedycache_cdn', 'speedycache_bloat', 'speedycache_pagespeed_test', 'speedycache_exclude', 'speedycache_img', 'speedycache_html_size', 'speedycache_assets_size', 'speedycache_version', 'speedycache_delete_cache_logs', 'speedycache_ccss_logs', 'speedycache_license', 'speedycache_pro_version', 'update_plugins', 'speedycache_preload_transient');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('speedycache_post_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('speedycache_post_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('speedycache_post_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('speedycache_post_meta');

