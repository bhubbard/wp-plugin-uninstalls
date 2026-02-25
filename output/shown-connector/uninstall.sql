-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shown_connector_pending_activation', 'shown_connector_activation_attempts', 'shown_business_id', 'shown_refresh_token', 'shown_access_token', 'shown_snippet_url', 'shown_token_expires_at', 'shown_has_imported_all_woocommerce_customers', 'shown_sync_customers_on_create', 'shown_sync_all_customers', 'shown_customer_list_id', 'shown_has_imported_all_woocommerce_products', 'shown_sync_products_on_create', 'shown_sync_all_products', 'shown_product_list_id', 'shown_enable_website_ownership_verification', 'shown_website_ownership_verification_tags', 'shown_oauth_code_verifier', 'shown_oauth_state', 'shown_sync_retry_count', 'shown_sync_completed_at', 'shown_oauth_redirect_uri_registered', 'shown_site_identifier', 'shown_connector_token', 'shown_connector_customers_cache');

