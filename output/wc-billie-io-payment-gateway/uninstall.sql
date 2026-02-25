-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webhook_debug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('companyorprivate', 'housenumber', 'billig_housenr', 'billig_houseno', '_billing_address_1', '_shipping_address_1', 'shipping_houseno', 'billing_houseno', '_billing_houseno', '_shipping_houseno', 'billieio_payment_status', 'billieio_payment_created');
DELETE FROM wp_usermeta WHERE meta_key IN ('companyorprivate', 'housenumber', 'billig_housenr', 'billig_houseno', '_billing_address_1', '_shipping_address_1', 'shipping_houseno', 'billing_houseno', '_billing_houseno', '_shipping_houseno', 'billieio_payment_status', 'billieio_payment_created');
DELETE FROM wp_termmeta WHERE meta_key IN ('companyorprivate', 'housenumber', 'billig_housenr', 'billig_houseno', '_billing_address_1', '_shipping_address_1', 'shipping_houseno', 'billing_houseno', '_billing_houseno', '_shipping_houseno', 'billieio_payment_status', 'billieio_payment_created');
DELETE FROM wp_commentmeta WHERE meta_key IN ('companyorprivate', 'housenumber', 'billig_housenr', 'billig_houseno', '_billing_address_1', '_shipping_address_1', 'shipping_houseno', 'billing_houseno', '_billing_houseno', '_shipping_houseno', 'billieio_payment_status', 'billieio_payment_created');

