-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_mouring_db_version', 'simple_mouring_speed', 'simple_mouring_interval', 'simple_mouring_type');

