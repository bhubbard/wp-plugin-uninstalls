-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ecsa-install-date', 'ecsa_initial_save_version', 'ecsa-ratingDiv', 'ecsa-installDate', 'ecsa-v', 'ecsa-type', 'cpfm_opt_in_choice_cool_events', 'update_plugins');

