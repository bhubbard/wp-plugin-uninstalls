-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tvapm_email', 'tvapm_settings', 'tvapm_site_id', 'tvapm_14_days_trial_applied', 'tvapm_entitlements', 'tvapm_is_trial', 'tvapm_is_paid', 'tvapm_trial_end');

