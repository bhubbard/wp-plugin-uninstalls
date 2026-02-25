-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_default_country', '_mp_store_identificator', 'mp_credentials_expired_result');

