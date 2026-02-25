-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_frotel_shipping_settings', 'frotel_chose_bank_title', 'frotel_chose_bank_name', 'frotel_chose_bank_page_id', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('packing', '_frotel_factor');
DELETE FROM wp_usermeta WHERE meta_key IN ('packing', '_frotel_factor');
DELETE FROM wp_termmeta WHERE meta_key IN ('packing', '_frotel_factor');
DELETE FROM wp_commentmeta WHERE meta_key IN ('packing', '_frotel_factor');

