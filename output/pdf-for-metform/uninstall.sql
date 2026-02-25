-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdf4metform');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('metform_entries__form_id', 'metform_entries__form_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('metform_entries__form_id', 'metform_entries__form_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('metform_entries__form_id', 'metform_entries__form_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('metform_entries__form_id', 'metform_entries__form_data');

