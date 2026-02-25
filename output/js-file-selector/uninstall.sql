-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gil_js_file_selector_file', 'gil_js_file_selector_functions');
DELETE FROM wp_usermeta WHERE meta_key IN ('gil_js_file_selector_file', 'gil_js_file_selector_functions');
DELETE FROM wp_termmeta WHERE meta_key IN ('gil_js_file_selector_file', 'gil_js_file_selector_functions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gil_js_file_selector_file', 'gil_js_file_selector_functions');

