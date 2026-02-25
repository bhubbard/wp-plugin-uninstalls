-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('intel_form_track_submission_default', 'intel_form_track_submission_value_default', 'intel_setup', 'intel_demo_mode');
DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_intel_form_settings_%';
DELETE FROM wp_options WHERE option_name LIKE 'intel_activated_%';

