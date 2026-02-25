-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbforms_hide_review_notice', 'bbforms_install_date', 'bbforms_settings', 'items_per_page', 'update_plugins', 'bbforms_plugins_api');
DELETE FROM wp_options WHERE option_name LIKE 'bbforms_cache_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bbforms_anonymize', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('bbforms_anonymize', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('bbforms_anonymize', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bbforms_anonymize', '_wp_page_template');

