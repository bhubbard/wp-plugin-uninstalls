-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('intrkt_refresh_call_retry_current_attempt', 'intrkt_all_db_tables_created', 'intrkt_country_code_selection', 'intrkt_country_code', 'intrkt_integration_status', 'intrkt_public_api_token_access_token', 'intrkt_public_api_token_expires_in', 'intrkt_public_api_token_created_at', 'intrkt_public_api_token_refresh_token', 'intrkt_public_api_token_org_id', 'intrkt_public_api_expiry_datetime', 'intrkt_log_data', 'intrkt_general-cod-confirmation', 'intrkt_update_db_value', 'intrkt_gdpr_status', 'intrkt_cron_run_time', 'INTRKT_ca_all_db_tables_created', 'intrkt_global_param', 'intrkt_excludes_orders', 'intrkt_ca_ignore_users', 'intrkt_gdpr_message', 'intrkt_abandon_cart_cut_off_api_time', 'woocommerce_currency');
DELETE FROM wp_options WHERE option_name LIKE 'order_data_%';

