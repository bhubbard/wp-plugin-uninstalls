-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('popaypos_reports_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('popay_payment', 'billing_phone', 'shipping_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('popay_payment', 'billing_phone', 'shipping_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('popay_payment', 'billing_phone', 'shipping_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('popay_payment', 'billing_phone', 'shipping_phone');

