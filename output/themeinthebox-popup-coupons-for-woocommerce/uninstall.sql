-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('popucoge_settings', 'popucoge_automations', 'popucoge_popups');

