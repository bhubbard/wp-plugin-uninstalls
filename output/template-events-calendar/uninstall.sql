-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ects_options', 'ect-install-date', 'ect-initial-save-version', 'cpfm_opt_in_choice_cool_events', 'ect-free-installDate', 'ect-ratingDiv', 'ect_elementor_notice_dismissed', 'ect_divi_notice_dismissed', 'ect-v', 'ect-type', 'settings_migration_status', 'ect_options', 'update_plugins');

