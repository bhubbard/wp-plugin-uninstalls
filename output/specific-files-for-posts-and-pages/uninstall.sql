-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('specific-files_version', 'specific-files_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_specific-files_css_files', '_specific-files_css_files_inline', '_specific-files_css_files_root', '_specific-files_js_files', '_specific-files_js_files_inline', '_specific-files_js_files_root');
DELETE FROM wp_usermeta WHERE meta_key IN ('_specific-files_css_files', '_specific-files_css_files_inline', '_specific-files_css_files_root', '_specific-files_js_files', '_specific-files_js_files_inline', '_specific-files_js_files_root');
DELETE FROM wp_termmeta WHERE meta_key IN ('_specific-files_css_files', '_specific-files_css_files_inline', '_specific-files_css_files_root', '_specific-files_js_files', '_specific-files_js_files_inline', '_specific-files_js_files_root');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_specific-files_css_files', '_specific-files_css_files_inline', '_specific-files_css_files_root', '_specific-files_js_files', '_specific-files_js_files_inline', '_specific-files_js_files_root');

