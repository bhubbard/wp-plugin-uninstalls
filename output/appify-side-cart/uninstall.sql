-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lii-ajaxcart_do_activation_redirect', 'lii-ajaxcart_installed', 'lii-ajaxcart_version', 'lii_ajaxcart_woocommerce_cart_redirect_after_add', 'recently_activated', 'Lii-ajax-add-to-cart-option', 'Lii-ajax-single-product-page-add-to-cart-option', 'Lii-showing-product-quantity-box-option', 'Lii-cart-order-option', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

