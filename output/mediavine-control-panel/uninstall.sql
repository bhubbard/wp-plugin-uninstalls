-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mv_mcp_version');
DELETE FROM wp_options WHERE option_name LIKE 'MVCP_%';
DELETE FROM wp_options WHERE option_name LIKE 'mcp_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mv_category_video_settings', 'wprm_video_embed', 'video_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('mv_category_video_settings', 'wprm_video_embed', 'video_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('mv_category_video_settings', 'wprm_video_embed', 'video_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mv_category_video_settings', 'wprm_video_embed', 'video_url');

