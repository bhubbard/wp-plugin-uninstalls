-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('html_import');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('URL_before_HTML_Import', '_wp_page_template', '_ise_old_sidebar');
DELETE FROM wp_usermeta WHERE meta_key IN ('URL_before_HTML_Import', '_wp_page_template', '_ise_old_sidebar');
DELETE FROM wp_termmeta WHERE meta_key IN ('URL_before_HTML_Import', '_wp_page_template', '_ise_old_sidebar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('URL_before_HTML_Import', '_wp_page_template', '_ise_old_sidebar');

