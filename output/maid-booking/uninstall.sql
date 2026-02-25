-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maid_title', 'maid_subtitle', 'maid_button_text', 'max_bedrooms', 'max_bathrooms', 'base_price', 'price_per_bathroom', 'price_per_bedroom', 'supervisor_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('customer_email', 'meta_b', 'meta_c');
DELETE FROM wp_usermeta WHERE meta_key IN ('customer_email', 'meta_b', 'meta_c');
DELETE FROM wp_termmeta WHERE meta_key IN ('customer_email', 'meta_b', 'meta_c');
DELETE FROM wp_commentmeta WHERE meta_key IN ('customer_email', 'meta_b', 'meta_c');

