-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tecc-install-date', 'tecc_initial_save_version', 'tecc-ratingDiv', 'tecc-installDate', 'tecc-v', 'tecc-type', 'tecc-cpfm-data-sharing', 'tecc_settings', 'cpfm_opt_in_choice_cool_events', 'update_plugins');

