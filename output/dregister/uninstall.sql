-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dr_fields', 'dr_force_first_name', 'dr_force_last_name');

