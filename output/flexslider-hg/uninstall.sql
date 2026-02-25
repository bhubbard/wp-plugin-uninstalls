-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_randomize', '_slideshow_speed', '_animation_speed', '_animation', '_animation_direction', '_image_size', '_heading_tag', '_hide_slide_data', '_order_by', '_order', '_limit', '_corners', '_style', '_targetblank', '_slide_link_url', '_slider_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_randomize', '_slideshow_speed', '_animation_speed', '_animation', '_animation_direction', '_image_size', '_heading_tag', '_hide_slide_data', '_order_by', '_order', '_limit', '_corners', '_style', '_targetblank', '_slide_link_url', '_slider_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_randomize', '_slideshow_speed', '_animation_speed', '_animation', '_animation_direction', '_image_size', '_heading_tag', '_hide_slide_data', '_order_by', '_order', '_limit', '_corners', '_style', '_targetblank', '_slide_link_url', '_slider_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_randomize', '_slideshow_speed', '_animation_speed', '_animation', '_animation_direction', '_image_size', '_heading_tag', '_hide_slide_data', '_order_by', '_order', '_limit', '_corners', '_style', '_targetblank', '_slide_link_url', '_slider_id');

