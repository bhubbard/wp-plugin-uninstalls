-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('currency_field', 'title_field', 'charts_field', 'chart_field');

