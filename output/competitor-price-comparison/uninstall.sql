-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('compcom_api_settings', 'compcom_competitors', 'compcom_repricing_settings', 'compcom_update_interval', 'compcom_scraperapi_exhausted', 'compcom_last_processing_time', 'compcom_mapping_settings', 'compcom_selected_competitors', 'compcom_scraping_in_progress', 'compcom_logs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_compcom_competitor_mappings', '_compcom_competitor_data', '_compcom_original_price', '_compcom_last_changed', '_compcom_repriced_to', '_compcom_cheapest_price', '_compcom_average_price', '_wc_cog_cost');
DELETE FROM wp_usermeta WHERE meta_key IN ('_compcom_competitor_mappings', '_compcom_competitor_data', '_compcom_original_price', '_compcom_last_changed', '_compcom_repriced_to', '_compcom_cheapest_price', '_compcom_average_price', '_wc_cog_cost');
DELETE FROM wp_termmeta WHERE meta_key IN ('_compcom_competitor_mappings', '_compcom_competitor_data', '_compcom_original_price', '_compcom_last_changed', '_compcom_repriced_to', '_compcom_cheapest_price', '_compcom_average_price', '_wc_cog_cost');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_compcom_competitor_mappings', '_compcom_competitor_data', '_compcom_original_price', '_compcom_last_changed', '_compcom_repriced_to', '_compcom_cheapest_price', '_compcom_average_price', '_wc_cog_cost');

