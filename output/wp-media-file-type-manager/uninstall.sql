-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seerox_wpmftm_activated', 'seerox_wpmftm_deactivated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('file_residential_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('file_residential_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('file_residential_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('file_residential_type');

