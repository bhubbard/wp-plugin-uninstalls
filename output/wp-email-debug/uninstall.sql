-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WPMDBUG_enabled', 'WPMDBUG_email', 'WPMDBUG_plugins');

