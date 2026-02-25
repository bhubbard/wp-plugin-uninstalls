-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flashy_account_id', 'flashy_key', 'flashy_catalog', 'flashy_subscribe', 'flashy_list_id', 'flashy_allow_guest', 'flashy_db_version', 'flashy_last_update', 'flashy_add_context', 'flashy_cf7', 'flashy_connected', 'woocommerce_email_from_name', 'woocommerce_email_from_address', 'flashy_updates', 'flashy_account', 'flashy_settings', 'flashy_log_state');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('flashy_accept_marketing', 'billing_first_name', 'billing_last_name', 'billing_city', 'billing_country', 'billing_state', 'billing_phone', '_flashy_reviews_data', '_flashy_reviews_updated', 'locale');
DELETE FROM wp_usermeta WHERE meta_key IN ('flashy_accept_marketing', 'billing_first_name', 'billing_last_name', 'billing_city', 'billing_country', 'billing_state', 'billing_phone', '_flashy_reviews_data', '_flashy_reviews_updated', 'locale');
DELETE FROM wp_termmeta WHERE meta_key IN ('flashy_accept_marketing', 'billing_first_name', 'billing_last_name', 'billing_city', 'billing_country', 'billing_state', 'billing_phone', '_flashy_reviews_data', '_flashy_reviews_updated', 'locale');
DELETE FROM wp_commentmeta WHERE meta_key IN ('flashy_accept_marketing', 'billing_first_name', 'billing_last_name', 'billing_city', 'billing_country', 'billing_state', 'billing_phone', '_flashy_reviews_data', '_flashy_reviews_updated', 'locale');

