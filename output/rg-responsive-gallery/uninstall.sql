-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rrg_mode', 'rrg_autostart', 'rrg_captions', 'rrg_controls', 'rrg_pager', 'rrg_infiniteLoop', 'rrg_speed', 'rrg_style_css', 'rrg_active');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rrg_image_path', 'rrg_image_path', '_rrg_alt', 'rrg_alt', '_rrg_desc', 'rrg_desc', '_rrg_url', 'rrg_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rrg_image_path', 'rrg_image_path', '_rrg_alt', 'rrg_alt', '_rrg_desc', 'rrg_desc', '_rrg_url', 'rrg_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rrg_image_path', 'rrg_image_path', '_rrg_alt', 'rrg_alt', '_rrg_desc', 'rrg_desc', '_rrg_url', 'rrg_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rrg_image_path', 'rrg_image_path', '_rrg_alt', 'rrg_alt', '_rrg_desc', 'rrg_desc', '_rrg_url', 'rrg_url');

