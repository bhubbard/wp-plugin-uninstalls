-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qpson_store_apikey', 'qpson_store_url', 'qpson_store_name', 'qpson_store_id', 'qpson_enable_tax_calculate');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qpson_store_product_id', 'qpson_id', 'qpson_publishProfileIds', 'qpson_publishProfileCodes', 'qpson_attributeVersion', 'qpson_propertyModelId');
DELETE FROM wp_usermeta WHERE meta_key IN ('qpson_store_product_id', 'qpson_id', 'qpson_publishProfileIds', 'qpson_publishProfileCodes', 'qpson_attributeVersion', 'qpson_propertyModelId');
DELETE FROM wp_termmeta WHERE meta_key IN ('qpson_store_product_id', 'qpson_id', 'qpson_publishProfileIds', 'qpson_publishProfileCodes', 'qpson_attributeVersion', 'qpson_propertyModelId');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qpson_store_product_id', 'qpson_id', 'qpson_publishProfileIds', 'qpson_publishProfileCodes', 'qpson_attributeVersion', 'qpson_propertyModelId');

