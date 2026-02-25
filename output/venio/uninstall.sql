-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('venio_config', 'venio_api_last_call', 'rewrite_rules');

