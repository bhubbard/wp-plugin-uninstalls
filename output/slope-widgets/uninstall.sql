-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slope_options', 'slope_global_settings', 'slope_promo', 'slope_promotions_options');

