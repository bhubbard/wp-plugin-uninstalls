#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shown_connector_pending_activation'
wp option delete 'shown_connector_activation_attempts'
wp option delete 'shown_business_id'
wp option delete 'shown_refresh_token'
wp option delete 'shown_access_token'
wp option delete 'shown_snippet_url'
wp option delete 'shown_token_expires_at'
wp option delete 'shown_has_imported_all_woocommerce_customers'
wp option delete 'shown_sync_customers_on_create'
wp option delete 'shown_sync_all_customers'
wp option delete 'shown_customer_list_id'
wp option delete 'shown_has_imported_all_woocommerce_products'
wp option delete 'shown_sync_products_on_create'
wp option delete 'shown_sync_all_products'
wp option delete 'shown_product_list_id'
wp option delete 'shown_enable_website_ownership_verification'
wp option delete 'shown_website_ownership_verification_tags'
wp option delete 'shown_oauth_code_verifier'
wp option delete 'shown_oauth_state'
wp option delete 'shown_sync_retry_count'
wp option delete 'shown_sync_completed_at'
wp option delete 'shown_oauth_redirect_uri_registered'
wp option delete 'shown_site_identifier'
wp option delete 'shown_connector_token'

# Delete Transients
wp transient delete 'shown_connector_customers_cache'

