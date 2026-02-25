-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('msfr_ensure_plan_products', 'msfr_registration_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_ids', 'membership_plan', 'first_name', 'last_name', 'phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_ids', 'membership_plan', 'first_name', 'last_name', 'phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_ids', 'membership_plan', 'first_name', 'last_name', 'phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_ids', 'membership_plan', 'first_name', 'last_name', 'phone');

