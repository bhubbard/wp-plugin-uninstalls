-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qtranslate_enabled_languages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edit_last', '_ca_handle', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edit_last', '_ca_handle', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edit_last', '_ca_handle', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edit_last', '_ca_handle', '_wp_page_template');

