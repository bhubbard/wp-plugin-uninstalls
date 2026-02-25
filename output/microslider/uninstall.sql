-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('microslider_ids', 'microslider_slide_1', 'microslider_options');
DELETE FROM wp_options WHERE option_name LIKE 'microslider_slide_%';

