-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('labtheme_descriptions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_labtheme_setting', '_labtheme_images_course_id', '_labtheme_images_event_id', 'featured-checkbox', 'featured-checkbox_bandw', 'category-image-id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_labtheme_setting', '_labtheme_images_course_id', '_labtheme_images_event_id', 'featured-checkbox', 'featured-checkbox_bandw', 'category-image-id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_labtheme_setting', '_labtheme_images_course_id', '_labtheme_images_event_id', 'featured-checkbox', 'featured-checkbox_bandw', 'category-image-id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_labtheme_setting', '_labtheme_images_course_id', '_labtheme_images_event_id', 'featured-checkbox', 'featured-checkbox_bandw', 'category-image-id');

