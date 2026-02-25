-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpso_activation', 'wpso_extras_order', 'wpso_options');

