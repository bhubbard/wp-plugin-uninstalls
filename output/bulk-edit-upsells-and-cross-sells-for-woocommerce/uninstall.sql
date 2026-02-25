-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('beucw_api_request_created_status', 'beucw_ai_default_check', 'beucw_default_ai_prompt', 'beucw_all_products', 'beucw_products_name', 'beucw_products_desc', 'beucw_ai_prompt_type', 'beucw_display_ai_request_notice', 'beucw_api_valid_key_status', 'beucw_prompt_request_button_hit', 'beucw_api_error_data', 'beucw_product_selected_options', 'beucw_about_store', 'beucw_product_list', 'test', 'beucw_openai_api_key', 'beucw_api_model_name', 'beucw_current_ai_request', 'beucw_tokens_used', 'beucw_ai_request_logs', 'response_ai', 'beucw_last_notice', 'beucw_latest_popup_sale_notice', 'beucw_ai_request_prompt', 'samit_test_taxonomy_start', 'beucw_api_usage_status', 'beucw_openai_api_model', 'beucw_set_model_names');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('beucw_latest_version_read_message', 'related_products_individual_select', 'beucw_rate_notices', 'beucw_notices_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('beucw_latest_version_read_message', 'related_products_individual_select', 'beucw_rate_notices', 'beucw_notices_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('beucw_latest_version_read_message', 'related_products_individual_select', 'beucw_rate_notices', 'beucw_notices_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('beucw_latest_version_read_message', 'related_products_individual_select', 'beucw_rate_notices', 'beucw_notices_time');

