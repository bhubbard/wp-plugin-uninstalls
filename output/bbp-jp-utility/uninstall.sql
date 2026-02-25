-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbp_jp_utility', '_bbp_root_slug', '_bbp_user_slug', 'bbp_utility_recent_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bbp_last_login', 'primary_blog');
DELETE FROM wp_usermeta WHERE meta_key IN ('bbp_last_login', 'primary_blog');
DELETE FROM wp_termmeta WHERE meta_key IN ('bbp_last_login', 'primary_blog');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bbp_last_login', 'primary_blog');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities';

