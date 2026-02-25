-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jes_events', 'jes-events', 'jes-theme-version', 'jes-events-db-version', 'site_name');

