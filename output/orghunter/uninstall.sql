-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('orghunter_api_url', 'orghunter_api_key', 'orghunter_charity_search_categories_cache', 'orghunter_charity_search_results_page_id', 'orghunter_affiliate_id', 'orghunter_return_url', 'orghunter_results_count', 'orghunter_powered_by');

