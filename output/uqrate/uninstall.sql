-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uqrate_chnkey_key', 'uqrate_opt_dropdown_1', 'uqrate_opt_checkbox_1');
DELETE FROM wp_options WHERE option_name LIKE '%error';

