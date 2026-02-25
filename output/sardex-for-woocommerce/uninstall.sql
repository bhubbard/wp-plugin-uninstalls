-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_sardex_b2b_payment_enabled', 'woocommerce_currency', 'woocommerce_force_ssl_checkout', 'wc_sardex_username', 'wc_sardex_password', 'wc_sardex_sandbox_enabled', 'wc_sardex_bisoo_payment_enabled', 'wc_sardex_bisoo_recharge_enabled', 'transient-sardex-bisoo-recharge-error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sardex_ticket_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sardex_ticket_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sardex_ticket_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sardex_ticket_number');

