-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('drip_payments_actual_key', 'drip_payments_do_activation_redirect', 'drip_payments_server_status', 'drip_payments_actual_cashback', 'drip_payments_merchant_cnpj_from_api_key', 'drip_payments_is_sandbox', 'drip_payments_single_product_banner_is_active', 'drip_payments_show_configuration_error', 'drip_payments_minutes_before_cancel_order');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('drip_paid_checkout_id', 'drip_checkout_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('drip_paid_checkout_id', 'drip_checkout_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('drip_paid_checkout_id', 'drip_checkout_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('drip_paid_checkout_id', 'drip_checkout_url');

