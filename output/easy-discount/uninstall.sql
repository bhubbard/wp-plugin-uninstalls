-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edgwl_discount_message', 'edgwl_discount_min_quantity', 'edgwl_discount_percentage');

