-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Activated_WooCommerce_Umba', 'woocommerce_currency', 'umba_currency_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('umba_error', 'umba_status', 'umba_payment_reference', 'umba_error_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('umba_error', 'umba_status', 'umba_payment_reference', 'umba_error_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('umba_error', 'umba_status', 'umba_payment_reference', 'umba_error_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('umba_error', 'umba_status', 'umba_payment_reference', 'umba_error_type');

