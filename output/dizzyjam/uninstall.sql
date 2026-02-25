-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dizzyjam_shop_unique_id', 'dizzyjam_iso_country_code', 'dizzyjam_api_auth_id', 'dizzyjam_api_key', 'dizzyjam_products_per_page', 'dizzyjam_cache_time', 'rewrite_rules');

