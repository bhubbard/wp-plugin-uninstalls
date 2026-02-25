-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('config', 'blogbutler_ai_config', 'blogbutler_ai_lastRunLog');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('blogbutler_ai_picture_imported', 'blogbutler_ai_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('blogbutler_ai_picture_imported', 'blogbutler_ai_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('blogbutler_ai_picture_imported', 'blogbutler_ai_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('blogbutler_ai_picture_imported', 'blogbutler_ai_id');

