-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('neutronpay_order_id', 'neutronpay_environment', 'neutronpay_order_amount', 'neutronpay_order_lightning_invoice_payment_request', 'neutronpay_order_chain_invoice_address', 'neutronpay_order_paid_amount', 'neutronpay_order_method', 'neutronpay_order_underpayment_slack_percentage');
DELETE FROM wp_usermeta WHERE meta_key IN ('neutronpay_order_id', 'neutronpay_environment', 'neutronpay_order_amount', 'neutronpay_order_lightning_invoice_payment_request', 'neutronpay_order_chain_invoice_address', 'neutronpay_order_paid_amount', 'neutronpay_order_method', 'neutronpay_order_underpayment_slack_percentage');
DELETE FROM wp_termmeta WHERE meta_key IN ('neutronpay_order_id', 'neutronpay_environment', 'neutronpay_order_amount', 'neutronpay_order_lightning_invoice_payment_request', 'neutronpay_order_chain_invoice_address', 'neutronpay_order_paid_amount', 'neutronpay_order_method', 'neutronpay_order_underpayment_slack_percentage');
DELETE FROM wp_commentmeta WHERE meta_key IN ('neutronpay_order_id', 'neutronpay_environment', 'neutronpay_order_amount', 'neutronpay_order_lightning_invoice_payment_request', 'neutronpay_order_chain_invoice_address', 'neutronpay_order_paid_amount', 'neutronpay_order_method', 'neutronpay_order_underpayment_slack_percentage');

