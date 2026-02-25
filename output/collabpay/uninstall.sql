-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('collabpay_api_key', 'woocommerce_default_country', 'settings_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_collabpay_cost', '_collabpay_vendor', 'affwp_ref', '_cp_ref');
DELETE FROM wp_usermeta WHERE meta_key IN ('_collabpay_cost', '_collabpay_vendor', 'affwp_ref', '_cp_ref');
DELETE FROM wp_termmeta WHERE meta_key IN ('_collabpay_cost', '_collabpay_vendor', 'affwp_ref', '_cp_ref');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_collabpay_cost', '_collabpay_vendor', 'affwp_ref', '_cp_ref');

