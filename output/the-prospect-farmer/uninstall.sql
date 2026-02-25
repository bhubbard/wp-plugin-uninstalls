-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('theprospectfarmer_data', 'theprospectfarmer_flags');

