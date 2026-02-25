-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ebec-install-date', 'ebec_initial_save_version', 'ebec-alreadyRated', 'ebec_activation_time', 'ebec_spare_me', 'ebec-v', 'cpfm_opt_in_choice_cool_events', 'classic-editor-replace', 'update_plugins');

