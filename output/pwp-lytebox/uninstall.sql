-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pwpl_autogroup', 'pwpl_colortheme', 'pwpl_resizespeed');

