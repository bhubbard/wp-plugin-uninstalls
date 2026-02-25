-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('demo-radio', 'rml_installdate', 'rml_supported', 'rml_save_for_later_page_id', 'read-me-later-settings', 'read-me-later-display-settings');
DELETE FROM wp_options WHERE option_name LIKE '%-settings';
DELETE FROM wp_options WHERE option_name LIKE '%-display-settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rml_saved_for_later');
DELETE FROM wp_usermeta WHERE meta_key IN ('rml_saved_for_later');
DELETE FROM wp_termmeta WHERE meta_key IN ('rml_saved_for_later');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rml_saved_for_later');

