-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apf_plugin_default_product_status', 'apf_plugin_page_id', 'apf_plugin_template', 'apf_reviews_installed_on', 'apf_total_open_count', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');
DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%';
DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_attributes', '_apf_reviews_dismissed_triggers', '_apf_reviews_last_dismissed', '_apf_reviews_already_did');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_attributes', '_apf_reviews_dismissed_triggers', '_apf_reviews_last_dismissed', '_apf_reviews_already_did');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_attributes', '_apf_reviews_dismissed_triggers', '_apf_reviews_last_dismissed', '_apf_reviews_already_did');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_attributes', '_apf_reviews_dismissed_triggers', '_apf_reviews_last_dismissed', '_apf_reviews_already_did');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

