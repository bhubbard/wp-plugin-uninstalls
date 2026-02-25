-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_round_at_subtotal', 'wc_postfinancecheckout_base_gateway_url', 'woocommerce_manage_stock', 'ywpo_order_status', 'wc_postfinancecheckout_payment_methods');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_postfinancecheckout_on_hold_email_sent', 'postfinancecheckout-previous-wc-min-version');
DELETE FROM wp_usermeta WHERE meta_key IN ('_postfinancecheckout_on_hold_email_sent', 'postfinancecheckout-previous-wc-min-version');
DELETE FROM wp_termmeta WHERE meta_key IN ('_postfinancecheckout_on_hold_email_sent', 'postfinancecheckout-previous-wc-min-version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_postfinancecheckout_on_hold_email_sent', 'postfinancecheckout-previous-wc-min-version');

