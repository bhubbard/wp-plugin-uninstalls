-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('selected-scripts', 'selected-styles', 'template_file_js_url', 'template_file_css_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('selected-scripts', 'selected-styles', 'template_file_js_url', 'template_file_css_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('selected-scripts', 'selected-styles', 'template_file_js_url', 'template_file_css_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('selected-scripts', 'selected-styles', 'template_file_js_url', 'template_file_css_url');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url';

