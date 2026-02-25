-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('css_js_files_css_links', 'css_js_files_css_files', 'css_js_files_css_rules', 'css_js_files_css_admin', 'css_js_files_js_links', 'css_js_files_js_files', 'css_js_files_js_rules', 'css_js_files_js_admin', 'css_js_files_head_rules', 'css_js_files_body_rules', 'css_js_files_footer_rules', 'css_js_files_path', 'css_js_files_timestamp');
DELETE FROM wp_options WHERE option_name LIKE '%_rules';
DELETE FROM wp_options WHERE option_name LIKE '%_links';
DELETE FROM wp_options WHERE option_name LIKE '%_files';
DELETE FROM wp_options WHERE option_name LIKE '%_admin';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('css_js_files_css_links', 'css_js_files_css_files', 'css_js_files_css_rules', 'css_js_files_js_links', 'css_js_files_js_files', 'css_js_files_js_rules');
DELETE FROM wp_usermeta WHERE meta_key IN ('css_js_files_css_links', 'css_js_files_css_files', 'css_js_files_css_rules', 'css_js_files_js_links', 'css_js_files_js_files', 'css_js_files_js_rules');
DELETE FROM wp_termmeta WHERE meta_key IN ('css_js_files_css_links', 'css_js_files_css_files', 'css_js_files_css_rules', 'css_js_files_js_links', 'css_js_files_js_files', 'css_js_files_js_rules');
DELETE FROM wp_commentmeta WHERE meta_key IN ('css_js_files_css_links', 'css_js_files_css_files', 'css_js_files_css_rules', 'css_js_files_js_links', 'css_js_files_js_files', 'css_js_files_js_rules');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_links';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_links';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_links';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_links';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_files';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_files';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_files';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_files';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rules';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rules';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rules';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rules';

