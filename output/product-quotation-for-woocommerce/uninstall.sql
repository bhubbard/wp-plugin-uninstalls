-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pqfw_quotations_cart', 'pqfw_settings', '_pqfw_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pqfw_customer_email', 'pqfw_customer_phone', 'pqfw_customer_subject', 'pqfw_customer_comments', 'pqfw_products_info', 'pqfw_products_ids', 'pqfw_customer_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('pqfw_customer_email', 'pqfw_customer_phone', 'pqfw_customer_subject', 'pqfw_customer_comments', 'pqfw_products_info', 'pqfw_products_ids', 'pqfw_customer_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('pqfw_customer_email', 'pqfw_customer_phone', 'pqfw_customer_subject', 'pqfw_customer_comments', 'pqfw_products_info', 'pqfw_products_ids', 'pqfw_customer_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pqfw_customer_email', 'pqfw_customer_phone', 'pqfw_customer_subject', 'pqfw_customer_comments', 'pqfw_products_info', 'pqfw_products_ids', 'pqfw_customer_name');

