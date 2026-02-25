-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ts_easy_integration_access_token', 'ts_easy_integration_version', 'woocommerce_gzd_version', 'woocommerce_version', 'ts_easy_integration_client_id', 'ts_easy_integration_client_secret', 'ts_easy_integration_has_encryption_error');

