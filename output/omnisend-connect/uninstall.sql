-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('omnisend_account_id', 'omnisend_api_key', 'omnisend_connect_token', 'omnisend_environment', 'omnisend_connected_domain', 'omnisend_plugin_version', 'omnisend_wp_version', 'omnisend_batches_inProgress', 'omnisend_woo_partner_link', 'omnisend_landing_page_content', 'omnisend_sync_contacts_finished', 'omnisend_sync_products_finished', 'omnisend_sync_categories_finished', 'omnisend_initial_sync');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'shipping_first_name', 'billing_first_name', 'last_name', 'shipping_last_name', 'billing_last_name', 'billing_country', 'shipping_country', 'billing_state', 'shipping_state', 'billing_city', 'shipping_city', 'billing_address_1', 'shipping_address_1', 'billing_address_2', 'shipping_address_2', 'billing_postcode', 'shipping_postcode', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'shipping_first_name', 'billing_first_name', 'last_name', 'shipping_last_name', 'billing_last_name', 'billing_country', 'shipping_country', 'billing_state', 'shipping_state', 'billing_city', 'shipping_city', 'billing_address_1', 'shipping_address_1', 'billing_address_2', 'shipping_address_2', 'billing_postcode', 'shipping_postcode', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'shipping_first_name', 'billing_first_name', 'last_name', 'shipping_last_name', 'billing_last_name', 'billing_country', 'shipping_country', 'billing_state', 'shipping_state', 'billing_city', 'shipping_city', 'billing_address_1', 'shipping_address_1', 'billing_address_2', 'shipping_address_2', 'billing_postcode', 'shipping_postcode', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'shipping_first_name', 'billing_first_name', 'last_name', 'shipping_last_name', 'billing_last_name', 'billing_country', 'shipping_country', 'billing_state', 'shipping_state', 'billing_city', 'shipping_city', 'billing_address_1', 'shipping_address_1', 'billing_address_2', 'shipping_address_2', 'billing_postcode', 'shipping_postcode', 'billing_phone');

