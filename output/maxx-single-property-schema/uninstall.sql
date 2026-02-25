-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maxx_psp_enable_single_property_schema', 'maxx_psp_aggregate_rating_enable', 'maxx_psp_randomize_ratings', 'maxx_psp_schema_type', 'maxx_psp_currency_type', 'maxx_psp_price_valid_until', 'maxx_psp_breadcrumb_options');

