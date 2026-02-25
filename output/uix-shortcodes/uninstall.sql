-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uix_sc_opt_cssnewcode', 'uix_sc_opt_map_api', 'uix_sc_opt_icontype', 'uix_sc_opt_style');

