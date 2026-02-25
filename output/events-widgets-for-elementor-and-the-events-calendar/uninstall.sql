-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ectbe-install-date', 'ectbe_initial_save_version', 'ectbe-installDate', 'ectbe-ratingDiv', 'cpfm_opt_in_choice_cool_events', 'ectbe-v', 'ectbe-type', 'ectbe-migration-status', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ectbe_exists', 'ectbe_style_migration');
DELETE FROM wp_usermeta WHERE meta_key IN ('ectbe_exists', 'ectbe_style_migration');
DELETE FROM wp_termmeta WHERE meta_key IN ('ectbe_exists', 'ectbe_style_migration');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ectbe_exists', 'ectbe_style_migration');

