-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('IR_TextLength', 'IR_SameTime', 'IR_Height', 'IR_type', 'IR_random', 'IR_pluginversion', 'IR_Title');

