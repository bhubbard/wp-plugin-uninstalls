-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_prices_include_tax', 'safo_crm_logging', 'wc_attribute_taxonomies', 'safo_crm_api_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_safocrm_wc_gpf_data', '_safo_api_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_safocrm_wc_gpf_data', '_safo_api_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_safocrm_wc_gpf_data', '_safo_api_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_safocrm_wc_gpf_data', '_safo_api_id');

