-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_total_display', 'woocommerce_tax_display_shop', 'woocommerce_myaccount_page_id', 'woocommerce_checkout_page_id', 'woocommerce_woocommerce_payments_settings', 'wpdesk_notice_dismiss_flexible-subscriptions-failed-payment-request-notice', 'active_sitewide_plugins', 'woocommerce_enable_order_comments');
DELETE FROM wp_options WHERE option_name LIKE 'fsub_payment_request_error_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fsb_subscription_one_time_shipping', '_purchase_note');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fsb_subscription_one_time_shipping', '_purchase_note');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fsb_subscription_one_time_shipping', '_purchase_note');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fsb_subscription_one_time_shipping', '_purchase_note');

