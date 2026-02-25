-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tiaop_expiration_value', 'tiaop_expiration_units', 'tiaop_retain_history_value', 'tiaop_retain_history_units');

