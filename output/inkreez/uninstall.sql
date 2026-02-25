-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inkreez_key', 'inkreez_sequences', 'inkreez_gtm_code_id', 'inkreez_gtm_code_head', 'inkreez_gtm_code_body', 'inkreez_role', 'inkreez_custom_plugin_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'inkreez_cf7_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_customer_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('_customer_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('_customer_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_customer_user');

