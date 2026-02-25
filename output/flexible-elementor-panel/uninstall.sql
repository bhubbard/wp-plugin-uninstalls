-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_elementor_fep_settings', 'fep_informations', 'fep_how_to_configure', 'fep_debug', 'fep-admin-notice-migration-done', 'fep-admin-notice-activation', 'fep-admin-notice-update-user-preferences');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('elementor_preferences');
DELETE FROM wp_usermeta WHERE meta_key IN ('elementor_preferences');
DELETE FROM wp_termmeta WHERE meta_key IN ('elementor_preferences');
DELETE FROM wp_commentmeta WHERE meta_key IN ('elementor_preferences');

