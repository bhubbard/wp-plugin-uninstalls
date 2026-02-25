-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vtwf_enable_tab', '_vtwf_tab_title', '_vtwf_hide_title', '_vtwf_video_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vtwf_enable_tab', '_vtwf_tab_title', '_vtwf_hide_title', '_vtwf_video_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vtwf_enable_tab', '_vtwf_tab_title', '_vtwf_hide_title', '_vtwf_video_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vtwf_enable_tab', '_vtwf_tab_title', '_vtwf_hide_title', '_vtwf_video_content');

