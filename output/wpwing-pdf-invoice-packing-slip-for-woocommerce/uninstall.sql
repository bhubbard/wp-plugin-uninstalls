-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_calc_taxes', 'wpwing_wcpi_check_folder_already_protected');

