-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icouk_hijri_month_version', 'icouk_hijri_month_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('icouk_hijri_month_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('icouk_hijri_month_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('icouk_hijri_month_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('icouk_hijri_month_settings');

