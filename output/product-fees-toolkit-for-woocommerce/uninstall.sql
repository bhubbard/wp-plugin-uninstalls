-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pftfw_display_fees_single', 'pftfw_name_conflicts', 'pftfw_fee_tax_class', 'pftfw_network_activation_error', 'pftfw_activation_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pftfw_product_fees', 'product-fee-name', 'product-fee-type', 'product-fee-percent', 'product-fee-amount', 'product-fee-multiplier');
DELETE FROM wp_usermeta WHERE meta_key IN ('pftfw_product_fees', 'product-fee-name', 'product-fee-type', 'product-fee-percent', 'product-fee-amount', 'product-fee-multiplier');
DELETE FROM wp_termmeta WHERE meta_key IN ('pftfw_product_fees', 'product-fee-name', 'product-fee-type', 'product-fee-percent', 'product-fee-amount', 'product-fee-multiplier');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pftfw_product_fees', 'product-fee-name', 'product-fee-type', 'product-fee-percent', 'product-fee-amount', 'product-fee-multiplier');

