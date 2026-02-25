-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gc_ob_payment_id', 'gc_ob_payment_ref', 'gc_ob_customer_id', 'gc_ob_billing_request_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('gc_ob_payment_id', 'gc_ob_payment_ref', 'gc_ob_customer_id', 'gc_ob_billing_request_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('gc_ob_payment_id', 'gc_ob_payment_ref', 'gc_ob_customer_id', 'gc_ob_billing_request_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gc_ob_payment_id', 'gc_ob_payment_ref', 'gc_ob_customer_id', 'gc_ob_billing_request_id');

