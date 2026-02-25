-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iute_notice', 'woocommerce_iutepay_settings', 'enabled', 'description', 'showPromoOnCategoryPage', 'enableWebhook', 'testmode', 'test_iute_api_key', 'test_iute_admin_key', 'iute_api_key', 'iute_admin_key', 'country', 'emailNotificationAboutNewLoanApplication', 'emailNotificationAboutLoanApplicationStatusChange', 'woocommerce_cart_redirect_after_add', 'woocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku');

