-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbox_sgsr_trial_started', 'wpbox_sgsr_license_type', 'wpbox_sgsr_trial_status');

