-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('styble_version', 'styble_first_version', 'styble_activation_date', 'styble_db_version');

