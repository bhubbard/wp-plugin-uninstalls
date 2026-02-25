-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linkshortcut_subdir', 'linkshortcut_length', 'linkshortcut_redirecttype');

