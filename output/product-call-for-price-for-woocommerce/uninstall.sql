-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfpfw_enable', 'cfpfw_product', 'pcfpfw_zero', 'pcfpfw_status', 'cfpfw_price_enable', 'cfpfw_min_price', 'cfpfw_max_price', 'cfpfw_change_text');

