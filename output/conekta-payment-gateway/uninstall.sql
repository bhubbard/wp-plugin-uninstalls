-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_force_ssl_checkout', 'woocommerce_conekta_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('conekta-order-id', 'conekta-clabe', 'meses-sin-intereses', 'transaction_id', '_payment_method', 'conekta-referencia', 'conekta-paid-at', 'conekta-id', 'conekta-creado', 'conekta-expira', 'conekta-reference', 'conekta-redirect-url', 'conekta-deep-link', 'locale');
DELETE FROM wp_usermeta WHERE meta_key IN ('conekta-order-id', 'conekta-clabe', 'meses-sin-intereses', 'transaction_id', '_payment_method', 'conekta-referencia', 'conekta-paid-at', 'conekta-id', 'conekta-creado', 'conekta-expira', 'conekta-reference', 'conekta-redirect-url', 'conekta-deep-link', 'locale');
DELETE FROM wp_termmeta WHERE meta_key IN ('conekta-order-id', 'conekta-clabe', 'meses-sin-intereses', 'transaction_id', '_payment_method', 'conekta-referencia', 'conekta-paid-at', 'conekta-id', 'conekta-creado', 'conekta-expira', 'conekta-reference', 'conekta-redirect-url', 'conekta-deep-link', 'locale');
DELETE FROM wp_commentmeta WHERE meta_key IN ('conekta-order-id', 'conekta-clabe', 'meses-sin-intereses', 'transaction_id', '_payment_method', 'conekta-referencia', 'conekta-paid-at', 'conekta-id', 'conekta-creado', 'conekta-expira', 'conekta-reference', 'conekta-redirect-url', 'conekta-deep-link', 'locale');

