-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'storyftw_dashicon_classes_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%story_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%story_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%story_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%story_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%palettes';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%palettes';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%palettes';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%palettes';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%background';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%background';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%background';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%background';

