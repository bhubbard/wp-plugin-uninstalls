-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppp_dropdown_location', 'wppp_method', 'wppp_dropdown_options', 'wppp_return_to_first', 'wppp_shop_columns', 'wppp_default_ppp', 'wppp_version', 'wppp_settings');

