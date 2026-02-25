-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nxp_domain', 'nxp_key', 'nxp_listview', 'nxp_embedhost');

