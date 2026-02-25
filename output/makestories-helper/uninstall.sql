-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mscpt_makestories_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'pages', 'story_id', 'publisher_details', 'scheduleData', 'scheduleId', 'version', 'widget_id', 'container', 'title', 'js-block', 'type', 'design', 'categories', 'divId');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'pages', 'story_id', 'publisher_details', 'scheduleData', 'scheduleId', 'version', 'widget_id', 'container', 'title', 'js-block', 'type', 'design', 'categories', 'divId');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'pages', 'story_id', 'publisher_details', 'scheduleData', 'scheduleId', 'version', 'widget_id', 'container', 'title', 'js-block', 'type', 'design', 'categories', 'divId');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'pages', 'story_id', 'publisher_details', 'scheduleData', 'scheduleId', 'version', 'widget_id', 'container', 'title', 'js-block', 'type', 'design', 'categories', 'divId');

