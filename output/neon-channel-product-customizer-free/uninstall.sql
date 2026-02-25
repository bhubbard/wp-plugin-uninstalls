-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ncpc_config_page', 'woocommerce_currency_pos', 'ncpc_global_settings_others_data', 'ncpc_product_free', 'ncpc_free_license', 'ncpc_free_plugin_clicks', 'ncpc_installed', 'ncpc_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product-ncpc-metas', 'ncpc-configs-meta', 'ncpc_free_review_done', 'ncpc_free_review_later', 'ncpc_free_plugins_promo_dismissed', 'ncpc_free_promo_later', 'ncpc_pro_notice_dismissed', 'ncpc_pro_notice_later');
DELETE FROM wp_usermeta WHERE meta_key IN ('product-ncpc-metas', 'ncpc-configs-meta', 'ncpc_free_review_done', 'ncpc_free_review_later', 'ncpc_free_plugins_promo_dismissed', 'ncpc_free_promo_later', 'ncpc_pro_notice_dismissed', 'ncpc_pro_notice_later');
DELETE FROM wp_termmeta WHERE meta_key IN ('product-ncpc-metas', 'ncpc-configs-meta', 'ncpc_free_review_done', 'ncpc_free_review_later', 'ncpc_free_plugins_promo_dismissed', 'ncpc_free_promo_later', 'ncpc_pro_notice_dismissed', 'ncpc_pro_notice_later');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product-ncpc-metas', 'ncpc-configs-meta', 'ncpc_free_review_done', 'ncpc_free_review_later', 'ncpc_free_plugins_promo_dismissed', 'ncpc_free_promo_later', 'ncpc_pro_notice_dismissed', 'ncpc_pro_notice_later');

