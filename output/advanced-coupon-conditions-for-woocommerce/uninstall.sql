-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('payment_methods', 'billing_countries', 'shipping_countries', 'zip_codes', 'pc_inc_exc');
DELETE FROM wp_usermeta WHERE meta_key IN ('payment_methods', 'billing_countries', 'shipping_countries', 'zip_codes', 'pc_inc_exc');
DELETE FROM wp_termmeta WHERE meta_key IN ('payment_methods', 'billing_countries', 'shipping_countries', 'zip_codes', 'pc_inc_exc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('payment_methods', 'billing_countries', 'shipping_countries', 'zip_codes', 'pc_inc_exc');

