-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fcpfw_select2', 'fcpfw_product_out_of_stock');
DELETE FROM wp_options WHERE option_name LIKE '%fgwerror';

