-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('azwctabs_global_tabs', 'az-custom-tabs-for-woocommerce');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_azwctabs_product_tabs');
DELETE FROM wp_usermeta WHERE meta_key IN ('_azwctabs_product_tabs');
DELETE FROM wp_termmeta WHERE meta_key IN ('_azwctabs_product_tabs');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_azwctabs_product_tabs');

