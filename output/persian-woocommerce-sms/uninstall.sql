-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pwoosms_table_archive', 'pwoosms_table_contacts', 'pwoosms_hide_about_page', 'pwoosms_redirect_about_page', 'woocommerce_notify_low_stock_amount', 'woocommerce_manage_stock', 'pwsms_notices', 'woocommerce_notify_no_stock_amount', 'pwoosms_update_product_admin_meta', 'pwoosms_ads_noticemelli', 'pwoosms_update_gateway_options', 'pwoosms_table_contacts_created', 'pwoosms_table_contacts_updated', 'pwsms_notice_all', 'pwsms_update_notices');
DELETE FROM wp_options WHERE option_name LIKE 'pwsms_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_first_name', 'billing_last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name');

