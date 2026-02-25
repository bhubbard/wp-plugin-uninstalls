-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcapi_domain_url_input');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('source_product_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('source_product_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('source_product_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('source_product_id');

