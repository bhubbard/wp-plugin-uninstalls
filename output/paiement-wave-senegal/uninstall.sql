-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pw_wave_license_key', 'pw_wave_license_status', 'pw_wave_license_last_check', 'pw_wave_trial_started', 'pw_wave_trial_end', 'pw_wave_license_data');

