-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('slider_height', 'height_units', 'slider_speed', 'slider_arrow', 'slider_bullet', 'your_simple_slider_img');
DELETE FROM wp_usermeta WHERE meta_key IN ('slider_height', 'height_units', 'slider_speed', 'slider_arrow', 'slider_bullet', 'your_simple_slider_img');
DELETE FROM wp_termmeta WHERE meta_key IN ('slider_height', 'height_units', 'slider_speed', 'slider_arrow', 'slider_bullet', 'your_simple_slider_img');
DELETE FROM wp_commentmeta WHERE meta_key IN ('slider_height', 'height_units', 'slider_speed', 'slider_arrow', 'slider_bullet', 'your_simple_slider_img');

