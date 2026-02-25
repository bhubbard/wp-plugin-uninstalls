-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('settagord_separator', 'settagord_class', 'settagord_debug_mode', 'classic-editor-replace');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_settagord', 'classic-editor-remember', 'settagord_detected_editor');
DELETE FROM wp_usermeta WHERE meta_key IN ('_settagord', 'classic-editor-remember', 'settagord_detected_editor');
DELETE FROM wp_termmeta WHERE meta_key IN ('_settagord', 'classic-editor-remember', 'settagord_detected_editor');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_settagord', 'classic-editor-remember', 'settagord_detected_editor');

