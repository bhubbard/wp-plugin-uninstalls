-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autonomos_is_active', 'autonomos_checkout_redirect', 'autonomos_add_button_quantity', 'autonomos_equivalence_surcharge_is_active', 'autonomos_per_retention');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tax_class', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tax_class', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tax_class', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tax_class', '_price');

