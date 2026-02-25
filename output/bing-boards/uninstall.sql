-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bing_activation_notice_global_skip');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bing_activation_notice_skip', '_bing_panel_link_url', '_bing_panel_link_anchor', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('bing_activation_notice_skip', '_bing_panel_link_url', '_bing_panel_link_anchor', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('bing_activation_notice_skip', '_bing_panel_link_url', '_bing_panel_link_anchor', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bing_activation_notice_skip', '_bing_panel_link_url', '_bing_panel_link_anchor', '_thumbnail_id');

