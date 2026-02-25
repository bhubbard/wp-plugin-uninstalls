-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('target_blank', 'cria_hashtags', 'cria_users');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bdf_disable_hashtags', 'bdf_disable_users');
DELETE FROM wp_usermeta WHERE meta_key IN ('bdf_disable_hashtags', 'bdf_disable_users');
DELETE FROM wp_termmeta WHERE meta_key IN ('bdf_disable_hashtags', 'bdf_disable_users');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bdf_disable_hashtags', 'bdf_disable_users');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'bdf_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'bdf_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'bdf_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bdf_%';

