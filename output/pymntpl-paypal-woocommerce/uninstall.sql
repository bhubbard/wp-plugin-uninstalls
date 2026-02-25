-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce-ppcp-settings', 'wc_ppcp_client_token');
DELETE FROM wp_options WHERE option_name LIKE 'wc_ppcp_connection_url_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ppcp_target_customer_id', 'ppcp_customer_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ppcp_target_customer_id', 'ppcp_customer_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ppcp_target_customer_id', 'ppcp_customer_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ppcp_target_customer_id', 'ppcp_customer_id');

