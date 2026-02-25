-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('phonicscore_opensheetmusicdisplay_default_settings_option_name');

