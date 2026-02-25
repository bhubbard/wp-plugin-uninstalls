-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcav-invalid-key', 'wcav');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcav_shipping_status', 'wcav_billing_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcav_shipping_status', 'wcav_billing_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcav_shipping_status', 'wcav_billing_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcav_shipping_status', 'wcav_billing_status');

