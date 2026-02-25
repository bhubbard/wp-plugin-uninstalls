-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wn_bosrcp_license_key', 'badgeos_settings', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_license_active';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_badgeos_count', '_badgeos_rcp_trigger', '_badgeos_rcp_object_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_badgeos_count', '_badgeos_rcp_trigger', '_badgeos_rcp_object_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_badgeos_count', '_badgeos_rcp_trigger', '_badgeos_rcp_object_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_badgeos_count', '_badgeos_rcp_trigger', '_badgeos_rcp_object_id');

