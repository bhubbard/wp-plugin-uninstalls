-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_credit_number', '_credit_price', 'credit_number', 'credit_price', '_remaining_credits', '_credits_amount', '_credit_bundle_product', '_credit_name', '_visibility', '_credits_removed', '_credits_used', '_credits_added');
DELETE FROM wp_usermeta WHERE meta_key IN ('_credit_number', '_credit_price', 'credit_number', 'credit_price', '_remaining_credits', '_credits_amount', '_credit_bundle_product', '_credit_name', '_visibility', '_credits_removed', '_credits_used', '_credits_added');
DELETE FROM wp_termmeta WHERE meta_key IN ('_credit_number', '_credit_price', 'credit_number', 'credit_price', '_remaining_credits', '_credits_amount', '_credit_bundle_product', '_credit_name', '_visibility', '_credits_removed', '_credits_used', '_credits_added');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_credit_number', '_credit_price', 'credit_number', 'credit_price', '_remaining_credits', '_credits_amount', '_credit_bundle_product', '_credit_name', '_visibility', '_credits_removed', '_credits_used', '_credits_added');

