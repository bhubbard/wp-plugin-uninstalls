-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('packager_pricing_plans', 'packager_pricing_table_title', 'packager_currency_list');

