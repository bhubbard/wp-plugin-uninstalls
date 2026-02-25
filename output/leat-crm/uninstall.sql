-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('leat_dashboard_page_id', 'leat_shop_uuid', 'leat_api_key', 'leat_auto_enroll_on_registration', 'leat_db_schema_version', 'leat_business_profile_uuid', 'leat_webhook_secret', 'leat_flush_rewrite_rules', 'leat_dashboard_endpoint_added', 'rewrite_rules', 'leat_logs', 'leat_version', 'piggy_api_key', 'woocommerce_tax_display_cart', 'woocommerce_enable_shipping_calc', 'woocommerce_tax_total_display', 'woocommerce_enable_myaccount_registration', 'woocommerce_cart_redirect_after_add', 'woocommerce_currency_pos', 'leat_syncing_vouchers', 'leat_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'leat_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('leat_uuid', 'leat_last_login', '_leat_giftcard_program_uuid', '_leat_giftcard_use_regular_price', '_regular_price', '_leat_voucher_promotion_uuid', '_leat_voucher_use_regular_price', '_leat_category_uuid', '_leat_disable_product_points', 'leat_contact_uuid', 'billing_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('leat_uuid', 'leat_last_login', '_leat_giftcard_program_uuid', '_leat_giftcard_use_regular_price', '_regular_price', '_leat_voucher_promotion_uuid', '_leat_voucher_use_regular_price', '_leat_category_uuid', '_leat_disable_product_points', 'leat_contact_uuid', 'billing_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('leat_uuid', 'leat_last_login', '_leat_giftcard_program_uuid', '_leat_giftcard_use_regular_price', '_regular_price', '_leat_voucher_promotion_uuid', '_leat_voucher_use_regular_price', '_leat_category_uuid', '_leat_disable_product_points', 'leat_contact_uuid', 'billing_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('leat_uuid', 'leat_last_login', '_leat_giftcard_program_uuid', '_leat_giftcard_use_regular_price', '_regular_price', '_leat_voucher_promotion_uuid', '_leat_voucher_use_regular_price', '_leat_category_uuid', '_leat_disable_product_points', 'leat_contact_uuid', 'billing_email');

