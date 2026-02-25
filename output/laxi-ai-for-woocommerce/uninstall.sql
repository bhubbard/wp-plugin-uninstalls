-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('laxi_chatbot_enabled', 'laxi_wc_consumer_key', 'laxi_wc_consumer_secret', 'laxi_wc_api_key_id');

