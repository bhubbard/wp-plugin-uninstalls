-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brainypress_gemini_api_key', 'brainypress_tw_consumer_key', 'brainypress_tw_consumer_secret', 'brainypress_tw_access_token', 'brainypress_tw_access_secret', 'brainypress_active_orders', 'brainypress_review_dismissed');

