-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('awoopq_field_sorting', 'awoopq_fields', 'suggested_products', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('awoopq_field_sorting', 'awoopq_fields', 'suggested_products', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('awoopq_field_sorting', 'awoopq_fields', 'suggested_products', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('awoopq_field_sorting', 'awoopq_fields', 'suggested_products', '_price');

