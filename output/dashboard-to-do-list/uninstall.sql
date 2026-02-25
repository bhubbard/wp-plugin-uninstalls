-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ardtdw-checkbox-admineditor', 'ardtdw-textarea', 'ardtdw-checkbox', 'ardtdw-checkbox-editor', 'ardtdw-position');

