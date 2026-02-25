-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('takethelead_settings', 'takethelead_application', 'takethelead_styles');

