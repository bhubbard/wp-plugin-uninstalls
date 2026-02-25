-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webtica_sendinblue_option_name', 'sendinblue_saved_custom_attributes', 'sendinblue_migration_pending', 'sendinblue_migration_running', 'sendinblue_migration_notice', 'sendinblue_migration_missing_attrs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data');

