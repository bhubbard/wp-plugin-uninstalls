-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WP_EX_FONTS_LIST', 'vcgstb_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cnrt_missing', 'twitter');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cnrt_missing', 'twitter');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cnrt_missing', 'twitter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cnrt_missing', 'twitter');

