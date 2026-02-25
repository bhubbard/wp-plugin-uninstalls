-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ppfr_property_access_state');
DELETE FROM wp_usermeta WHERE meta_key IN ('ppfr_property_access_state');
DELETE FROM wp_termmeta WHERE meta_key IN ('ppfr_property_access_state');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ppfr_property_access_state');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ppfr_property_users_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ppfr_property_users_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ppfr_property_users_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ppfr_property_users_%';

