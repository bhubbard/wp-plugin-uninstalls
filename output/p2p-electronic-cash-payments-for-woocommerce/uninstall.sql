-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bitcoins_address', 'bch_cashaddr', 'order_total_in_btc', 'bitcoins_paid_total', 'bitcoins_refunded', 'exchange_rate', '_incoming_payments', '_payment_completed', 'bitcoin_variant');
DELETE FROM wp_usermeta WHERE meta_key IN ('bitcoins_address', 'bch_cashaddr', 'order_total_in_btc', 'bitcoins_paid_total', 'bitcoins_refunded', 'exchange_rate', '_incoming_payments', '_payment_completed', 'bitcoin_variant');
DELETE FROM wp_termmeta WHERE meta_key IN ('bitcoins_address', 'bch_cashaddr', 'order_total_in_btc', 'bitcoins_paid_total', 'bitcoins_refunded', 'exchange_rate', '_incoming_payments', '_payment_completed', 'bitcoin_variant');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bitcoins_address', 'bch_cashaddr', 'order_total_in_btc', 'bitcoins_paid_total', 'bitcoins_refunded', 'exchange_rate', '_incoming_payments', '_payment_completed', 'bitcoin_variant');

