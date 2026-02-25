-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vrffwf_settings', 'vrffwf_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vrffwf_entry_id', '_vrffwf_form_id', '_vrffwf_field_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vrffwf_entry_id', '_vrffwf_form_id', '_vrffwf_field_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vrffwf_entry_id', '_vrffwf_form_id', '_vrffwf_field_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vrffwf_entry_id', '_vrffwf_form_id', '_vrffwf_field_id');

