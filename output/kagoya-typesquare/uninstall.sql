-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('typesquare_custom_theme', 'typesquare_fonttheme', 'typesquare_auth');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('typesquare_fonttheme');
DELETE FROM wp_usermeta WHERE meta_key IN ('typesquare_fonttheme');
DELETE FROM wp_termmeta WHERE meta_key IN ('typesquare_fonttheme');
DELETE FROM wp_commentmeta WHERE meta_key IN ('typesquare_fonttheme');

