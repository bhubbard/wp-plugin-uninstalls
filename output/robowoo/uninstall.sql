-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('robokassa_total', 'robokassa_disable_second_receipt', 'robokassa_OpKey', 'robokassa_tax', 'robokassa_fake_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('robokassa_total', 'robokassa_disable_second_receipt', 'robokassa_OpKey', 'robokassa_tax', 'robokassa_fake_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('robokassa_total', 'robokassa_disable_second_receipt', 'robokassa_OpKey', 'robokassa_tax', 'robokassa_fake_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('robokassa_total', 'robokassa_disable_second_receipt', 'robokassa_OpKey', 'robokassa_tax', 'robokassa_fake_order');

