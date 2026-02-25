-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('asowp_output_options', 'asowp_config_page', 'asowp_all_borders', 'asowp_all_shapes', 'asowp_all_fixingMethods', 'ASOWP_installed', 'ASOWP_version', 'woocommerce_currency_pos', 'asowp-manages-cliparts', 'asowp-manages-fonts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product-asowp-metas', 'asowp-configs-meta', 'asowp-templates', 'variation_minimum_allowed_quantity', 'minimum_allowed_quantity', 'variation_maximum_allowed_quantity', 'maximum_allowed_quantity');
DELETE FROM wp_usermeta WHERE meta_key IN ('product-asowp-metas', 'asowp-configs-meta', 'asowp-templates', 'variation_minimum_allowed_quantity', 'minimum_allowed_quantity', 'variation_maximum_allowed_quantity', 'maximum_allowed_quantity');
DELETE FROM wp_termmeta WHERE meta_key IN ('product-asowp-metas', 'asowp-configs-meta', 'asowp-templates', 'variation_minimum_allowed_quantity', 'minimum_allowed_quantity', 'variation_maximum_allowed_quantity', 'maximum_allowed_quantity');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product-asowp-metas', 'asowp-configs-meta', 'asowp-templates', 'variation_minimum_allowed_quantity', 'minimum_allowed_quantity', 'variation_maximum_allowed_quantity', 'maximum_allowed_quantity');

