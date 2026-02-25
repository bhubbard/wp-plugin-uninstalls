-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seedprod_fonts');
DELETE FROM wp_options WHERE option_name LIKE '%utopia_ucp_options';

