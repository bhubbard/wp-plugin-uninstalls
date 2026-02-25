-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fvb_general_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fms_form', 'fvb_form', 'fvb_settings', '_fms_form_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('fms_form', 'fvb_form', 'fvb_settings', '_fms_form_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('fms_form', 'fvb_form', 'fvb_settings', '_fms_form_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fms_form', 'fvb_form', 'fvb_settings', '_fms_form_id');

