-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wikilms_price', 'wikilms_duration', 'wikilms_level', 'wikilms_students', 'wikilms_access', 'wikilms_language', 'contact_shortcodes');
DELETE FROM wp_usermeta WHERE meta_key IN ('wikilms_price', 'wikilms_duration', 'wikilms_level', 'wikilms_students', 'wikilms_access', 'wikilms_language', 'contact_shortcodes');
DELETE FROM wp_termmeta WHERE meta_key IN ('wikilms_price', 'wikilms_duration', 'wikilms_level', 'wikilms_students', 'wikilms_access', 'wikilms_language', 'contact_shortcodes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wikilms_price', 'wikilms_duration', 'wikilms_level', 'wikilms_students', 'wikilms_access', 'wikilms_language', 'contact_shortcodes');

