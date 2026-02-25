-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('titsl_settings', 'titsl_version', 'titsl_link_map_built', 'titsl_link_map_page', 'titsl_link_map', 'titsl_twitter_pkce');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname', 'titsl_avatar_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'nickname', 'titsl_avatar_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname', 'titsl_avatar_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname', 'titsl_avatar_url');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';

