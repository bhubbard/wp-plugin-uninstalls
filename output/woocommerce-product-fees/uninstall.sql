-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcpf_fee_tax_class', 'wcpf_name_conflicts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product-fee-name', 'product-fee-amount', 'product-fee-multiplier');
DELETE FROM wp_usermeta WHERE meta_key IN ('product-fee-name', 'product-fee-amount', 'product-fee-multiplier');
DELETE FROM wp_termmeta WHERE meta_key IN ('product-fee-name', 'product-fee-amount', 'product-fee-multiplier');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product-fee-name', 'product-fee-amount', 'product-fee-multiplier');

