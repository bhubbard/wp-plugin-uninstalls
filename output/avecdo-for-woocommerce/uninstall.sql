-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('avecdo_version', 'active_sitewide_plugins', 'woocommerce_default_country', 'woocommerce_currency', 'woocommerce_prices_include_tax', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'avecdo_plugin_activated', 'avecdo_public_key', 'avecdo_private_key', 'avecdo_use_description', 'avecdo_language', 'avecdo_currency', 'avecdo_multi_lang_props', 'avecdo_activation_key', 'avecdo_v2_plugin_activated', 'avecdo_v2_public_key', 'avecdo_v2_private_key', 'avecdo_v2_use_description', 'avecdo_v2_language', 'avecdo_v2_currency', 'avecdo_v2_multi_lang_props', 'avecdo_v2_activation_key', '__avecdo_update_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_avecdo_brand', '_avecdo_mpn', '_avecdo_upc', '_avecdo_ean', '_avecdo_isbn', '_avecdo_jan', '_wcml_custom_prices_status', '_wp_attachment_image_alt', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_avecdo_brand', '_avecdo_mpn', '_avecdo_upc', '_avecdo_ean', '_avecdo_isbn', '_avecdo_jan', '_wcml_custom_prices_status', '_wp_attachment_image_alt', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_avecdo_brand', '_avecdo_mpn', '_avecdo_upc', '_avecdo_ean', '_avecdo_isbn', '_avecdo_jan', '_wcml_custom_prices_status', '_wp_attachment_image_alt', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_avecdo_brand', '_avecdo_mpn', '_avecdo_upc', '_avecdo_ean', '_avecdo_isbn', '_avecdo_jan', '_wcml_custom_prices_status', '_wp_attachment_image_alt', 'thumbnail_id');

