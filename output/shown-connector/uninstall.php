<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shown_connector_pending_activation');
delete_site_option('shown_connector_pending_activation');
delete_option('shown_connector_activation_attempts');
delete_site_option('shown_connector_activation_attempts');
delete_option('shown_business_id');
delete_site_option('shown_business_id');
delete_option('shown_refresh_token');
delete_site_option('shown_refresh_token');
delete_option('shown_access_token');
delete_site_option('shown_access_token');
delete_option('shown_snippet_url');
delete_site_option('shown_snippet_url');
delete_option('shown_token_expires_at');
delete_site_option('shown_token_expires_at');
delete_option('shown_has_imported_all_woocommerce_customers');
delete_site_option('shown_has_imported_all_woocommerce_customers');
delete_option('shown_sync_customers_on_create');
delete_site_option('shown_sync_customers_on_create');
delete_option('shown_sync_all_customers');
delete_site_option('shown_sync_all_customers');
delete_option('shown_customer_list_id');
delete_site_option('shown_customer_list_id');
delete_option('shown_has_imported_all_woocommerce_products');
delete_site_option('shown_has_imported_all_woocommerce_products');
delete_option('shown_sync_products_on_create');
delete_site_option('shown_sync_products_on_create');
delete_option('shown_sync_all_products');
delete_site_option('shown_sync_all_products');
delete_option('shown_product_list_id');
delete_site_option('shown_product_list_id');
delete_option('shown_enable_website_ownership_verification');
delete_site_option('shown_enable_website_ownership_verification');
delete_option('shown_website_ownership_verification_tags');
delete_site_option('shown_website_ownership_verification_tags');
delete_option('shown_oauth_code_verifier');
delete_site_option('shown_oauth_code_verifier');
delete_option('shown_oauth_state');
delete_site_option('shown_oauth_state');
delete_option('shown_sync_retry_count');
delete_site_option('shown_sync_retry_count');
delete_option('shown_sync_completed_at');
delete_site_option('shown_sync_completed_at');
delete_option('shown_oauth_redirect_uri_registered');
delete_site_option('shown_oauth_redirect_uri_registered');
delete_option('shown_site_identifier');
delete_site_option('shown_site_identifier');
delete_option('shown_connector_token');
delete_site_option('shown_connector_token');

// Delete Transients
delete_transient('shown_connector_customers_cache');
delete_site_transient('shown_connector_customers_cache');

