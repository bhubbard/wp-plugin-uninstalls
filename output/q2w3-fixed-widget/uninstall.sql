-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('q2w3_fixed_widget');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

