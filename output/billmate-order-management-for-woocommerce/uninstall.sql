-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_bco_settings', 'billmate_common_activateonstatus', 'billmate_common_cancelonstatus');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_kco_check_optimize_notice', '_billmate_transaction_id', 'billmate_invoice_id', '_billmate_reservation_cancelled', '_billmate_payment_method_id', '_billmate_reservation_activated', '_krokedil_refunded');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_kco_check_optimize_notice', '_billmate_transaction_id', 'billmate_invoice_id', '_billmate_reservation_cancelled', '_billmate_payment_method_id', '_billmate_reservation_activated', '_krokedil_refunded');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_kco_check_optimize_notice', '_billmate_transaction_id', 'billmate_invoice_id', '_billmate_reservation_cancelled', '_billmate_payment_method_id', '_billmate_reservation_activated', '_krokedil_refunded');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_kco_check_optimize_notice', '_billmate_transaction_id', 'billmate_invoice_id', '_billmate_reservation_cancelled', '_billmate_payment_method_id', '_billmate_reservation_activated', '_krokedil_refunded');

