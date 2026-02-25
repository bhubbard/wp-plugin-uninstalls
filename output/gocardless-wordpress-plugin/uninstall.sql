-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gocardless_config', 'gocardless_limit');
DELETE FROM wp_options WHERE option_name LIKE 'gocardless_%';

