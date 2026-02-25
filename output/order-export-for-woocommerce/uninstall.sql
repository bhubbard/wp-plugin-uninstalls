-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_attributes', '_sku', '_tax_status', '_completed_date', '_customer_user', '_billing_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_attributes', '_sku', '_tax_status', '_completed_date', '_customer_user', '_billing_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_attributes', '_sku', '_tax_status', '_completed_date', '_customer_user', '_billing_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_attributes', '_sku', '_tax_status', '_completed_date', '_customer_user', '_billing_email');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

