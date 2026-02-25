-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctcc_options_settings', 'ctcc_content_settings', 'ctcc_styles_settings', 'catapult_cookie_options', 'ggcp_more_info_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ctcc_exclude');
DELETE FROM wp_usermeta WHERE meta_key IN ('ctcc_exclude');
DELETE FROM wp_termmeta WHERE meta_key IN ('ctcc_exclude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ctcc_exclude');

