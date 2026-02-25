-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetpack_post_views_wp_api_key', 'jetpack_post_views_settings', 'jetpack-post-views_version', 'jetpack_post_views_stats_has_run', 'jetpack_post_views');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jetpack-post-views');
DELETE FROM wp_usermeta WHERE meta_key IN ('jetpack-post-views');
DELETE FROM wp_termmeta WHERE meta_key IN ('jetpack-post-views');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jetpack-post-views');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'jetpack-post-views-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'jetpack-post-views-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'jetpack-post-views-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jetpack-post-views-%';

