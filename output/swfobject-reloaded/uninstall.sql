-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mc_setting_name', 'mc_iphone_setting_name', 'mc_feed_setting_name', 'mc_altcontent_setting_name', 'mc_params_setting_name', 'mc_flashver_setting_name', 'embed_size_w', 'embed_size_h');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mc_x', '_mc_y', '_mc_base', '_mc_swfver');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mc_x', '_mc_y', '_mc_base', '_mc_swfver');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mc_x', '_mc_y', '_mc_base', '_mc_swfver');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mc_x', '_mc_y', '_mc_base', '_mc_swfver');

