-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_twfev_entry_data', '_twfev_submitted_at', '_twfev_form_name', '_twfev_form_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_twfev_entry_data', '_twfev_submitted_at', '_twfev_form_name', '_twfev_form_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_twfev_entry_data', '_twfev_submitted_at', '_twfev_form_name', '_twfev_form_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_twfev_entry_data', '_twfev_submitted_at', '_twfev_form_name', '_twfev_form_id');

