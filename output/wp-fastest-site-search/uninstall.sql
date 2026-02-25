-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('EXPERTREC_MOCK_API', 'expertrec_debug', 'expertrec_options', 'expertrec_engine', 'expertrec_indexing_status', 'EXPERTREC_DB_OPTIONS_BRAND_TAXONOMY', 'expertrec_stop_indexing', 'expertrec_index_status', 'EXPERTREC_DB_OPTIONS_INDEX_VARIANTS', 'EXPERTREC_DB_OPTIONS_COMMUNICATION_EMAIL', 'EXPERTREC_DB_OPTIONS_COMMUNICATION_PHONE', 'EXPERTREC_DB_OPTIONS_INIT', 'EXPERTREC_DB_OPTIONS_AI_UI_ENABLED', 'EXPERTREC_DB_OPTIONS_READONLY_MODE', 'EXPERTREC_DB_OPTIONS_LOGGING_ENABLED', 'EXPERTREC_DB_OPTIONS_API_LOGGING_ENABLED', 'expertrec_plugin_do_activation_redirect', 'expertrec_debug_url', 'expertrec_options_RO', 'exp_ai_ui_enabled', 'exp_api_logging_enabled', 'exp_brand_taxonomy', 'exp_index_variants', 'exp_init', 'exp_last_successful_sync', 'exp_meta_keys', 'exp_readonly_mode', 'exp_selected_doc_types', 'exp_sentry_enabled', 'exp_logging_enabled', 'exp_subsequent_updates', 'exp_woocommerce_product_attributes', 'exp_wc_attribute_taxonomies', 'exp_meta_keys');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id', '_wp_attachment_image_alt', '_product_attributes', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id', '_wp_attachment_image_alt', '_product_attributes', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id', '_wp_attachment_image_alt', '_product_attributes', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id', '_wp_attachment_image_alt', '_product_attributes', '_price');

