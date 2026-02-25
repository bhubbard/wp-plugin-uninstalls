-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jp_config', 'jp_header_loc', 'jp_custom_name', 'jp_custom_header', 'jp_privacy', 'jp_privacyp', 'jp_privacyl', 'jp_comments', 'jp_cat', 'jp_tag', 'jp_more', 'jp_dbversion');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_jp_xpto');
DELETE FROM wp_usermeta WHERE meta_key IN ('_jp_xpto');
DELETE FROM wp_termmeta WHERE meta_key IN ('_jp_xpto');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_jp_xpto');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_jp_xpid_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_jp_xpid_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_jp_xpid_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_jp_xpid_%';

