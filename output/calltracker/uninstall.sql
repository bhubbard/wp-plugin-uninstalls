-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('calltracker-api-key', 'dni-cf-rocketscript-support');

