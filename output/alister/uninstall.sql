-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ultimus_currency_rates', 'alister_property_dictionary');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('alister_source_link', 'source', 'ali_image', 'endpoint_args', 'ignore_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('alister_source_link', 'source', 'ali_image', 'endpoint_args', 'ignore_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('alister_source_link', 'source', 'ali_image', 'endpoint_args', 'ignore_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('alister_source_link', 'source', 'ali_image', 'endpoint_args', 'ignore_product');

