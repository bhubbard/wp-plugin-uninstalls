-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easycommerce-pro_license', 'easycommerce-setup_wizard', 'easycommerce-general-store', '_easycommerce-no_tracking', 'easycommerce-general-business', 'easycommerce-tax-settings', 'easycommerce-shipping-settings', 'easycommerce-payment-methods', 'easycommerce-payment-pricing', 'easycommerce_api', 'easycommerce_activated', 'easycommerce_importer_headers', 'easycommerce_importer_rows', 'easycommerce_importer_mapping', 'easycommerce_import_statuses', 'easycommerce_addons', 'easycommerce_db_version', 'easycommerce-locations_db_loaded', 'easycommerce_migration_status', 'easycommerce-general-branding', 'easycommerce_block_migrated', 'easycommerce_checkout_editor_billing_fields', 'easycommerce_ai_credits', 'easycommerce_dismissed_notices');
DELETE FROM wp_options WHERE option_name LIKE '%_status';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('easycommerce-chat_questions', '_wp_page_template', 'rating', 'average_rating', '_stripe_customer_id', 'stripe_customer_id', '_easycommerce_cart_hash', 'total_sale', 'billing_address', '_price', 'shipping_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('easycommerce-chat_questions', '_wp_page_template', 'rating', 'average_rating', '_stripe_customer_id', 'stripe_customer_id', '_easycommerce_cart_hash', 'total_sale', 'billing_address', '_price', 'shipping_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('easycommerce-chat_questions', '_wp_page_template', 'rating', 'average_rating', '_stripe_customer_id', 'stripe_customer_id', '_easycommerce_cart_hash', 'total_sale', 'billing_address', '_price', 'shipping_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('easycommerce-chat_questions', '_wp_page_template', 'rating', 'average_rating', '_stripe_customer_id', 'stripe_customer_id', '_easycommerce_cart_hash', 'total_sale', 'billing_address', '_price', 'shipping_address');

