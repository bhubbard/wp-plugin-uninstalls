-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tryonx_gemini_api_key', 'tryonx_enabled_product_categories', 'active_sitewide_plugins');

