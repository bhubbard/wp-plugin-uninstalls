-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('archagam_disable_bootstrap');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('archagam_calendar', 'archagam_upload_option', 'archagam_select_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('archagam_calendar', 'archagam_upload_option', 'archagam_select_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('archagam_calendar', 'archagam_upload_option', 'archagam_select_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('archagam_calendar', 'archagam_upload_option', 'archagam_select_type');

