-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('giltoptips_image', 'giltoptips_bg_colour', 'giltoptips_h_colour', 'giltoptips_txt_colour', 'giltoptips_a_colour', 'giltoptips_ahov_colour');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_giltoptips_url_value_key', '_gil_top_tips_url_value_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_giltoptips_url_value_key', '_gil_top_tips_url_value_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_giltoptips_url_value_key', '_gil_top_tips_url_value_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_giltoptips_url_value_key', '_gil_top_tips_url_value_key');

