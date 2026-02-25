-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awas_woo_inf_basics', 'awas_woo_inf_color');

