-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atom_aam_settings', 'atom_aam_settings_rulebased', 'atom_aam_settings_individual', 'atom_aam_settings_email', 'atom_aam_version', 'aam_admin_notification_badge', 'atom_appointment_transient_minmaxtime');

