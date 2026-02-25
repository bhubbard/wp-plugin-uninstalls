-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icvaac_api_enabled', 'icvaac_test_mode', 'icvaac_stripe_publishable_key', 'icvaac_stripe_secret_key', 'icvaac_openai_api_key', 'icvaac_webhook_secret', 'icvaac_enable_logging', 'icvaac_product_feed_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_acp_session_id', '_acp_payment_intent_id', '_icvaac_test_order', '_icvaac_enable_chatgpt', '_acp_status', '_acp_request_data', '_acp_line_items', '_acp_totals', '_acp_fulfillment_options', '_acp_messages', '_acp_selected_fulfillment_option', '_acp_order_id', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_acp_session_id', '_acp_payment_intent_id', '_icvaac_test_order', '_icvaac_enable_chatgpt', '_acp_status', '_acp_request_data', '_acp_line_items', '_acp_totals', '_acp_fulfillment_options', '_acp_messages', '_acp_selected_fulfillment_option', '_acp_order_id', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_acp_session_id', '_acp_payment_intent_id', '_icvaac_test_order', '_icvaac_enable_chatgpt', '_acp_status', '_acp_request_data', '_acp_line_items', '_acp_totals', '_acp_fulfillment_options', '_acp_messages', '_acp_selected_fulfillment_option', '_acp_order_id', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_acp_session_id', '_acp_payment_intent_id', '_icvaac_test_order', '_icvaac_enable_chatgpt', '_acp_status', '_acp_request_data', '_acp_line_items', '_acp_totals', '_acp_fulfillment_options', '_acp_messages', '_acp_selected_fulfillment_option', '_acp_order_id', '_wp_attachment_image_alt');

