-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dessky_responsive_slider_options', 'dessky_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dessky_slide_link_url', '_dessky_slide_caption');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dessky_slide_link_url', '_dessky_slide_caption');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dessky_slide_link_url', '_dessky_slide_caption');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dessky_slide_link_url', '_dessky_slide_caption');

