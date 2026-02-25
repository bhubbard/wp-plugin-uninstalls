-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcv_assistant_api_system_key', 'wcv_assistant_trial_valid_until', 'wcva_current_value', 'wcva_last_value', 'wcva_last_value_updated_at', 'wcv_assistant_license_key', 'wcv_assistant_uuid', 'wcva_valid_license_provided', 'woocommerce_permalinks', 'wcv_assistant_settings_updated_timestamp', 'wcva_product_search', 'wcv_assistant_voice', 'wcva_basic_config_option_updated');

