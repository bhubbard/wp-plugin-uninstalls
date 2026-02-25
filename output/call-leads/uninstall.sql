-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('calds_admin_settings_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('name', 'email', 'phone', 'call_date', 'time_from');
DELETE FROM wp_usermeta WHERE meta_key IN ('name', 'email', 'phone', 'call_date', 'time_from');
DELETE FROM wp_termmeta WHERE meta_key IN ('name', 'email', 'phone', 'call_date', 'time_from');
DELETE FROM wp_commentmeta WHERE meta_key IN ('name', 'email', 'phone', 'call_date', 'time_from');

