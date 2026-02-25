-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mcfgf_settings', 'mcfgf_conversation_generator', 'mtfcf7_conversation_generator', 'mcfgf_basics', 'mcfgf_install', 'gfp_stripe_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_woocommerce_load_saved_cart_after_login', 'ignore_mcfgf_ag_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_woocommerce_load_saved_cart_after_login', 'ignore_mcfgf_ag_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_woocommerce_load_saved_cart_after_login', 'ignore_mcfgf_ag_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_woocommerce_load_saved_cart_after_login', 'ignore_mcfgf_ag_notice');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';

