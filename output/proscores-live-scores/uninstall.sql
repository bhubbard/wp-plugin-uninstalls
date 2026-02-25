-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('proscores_settings_options', 'proscores_settings_options_standings');

