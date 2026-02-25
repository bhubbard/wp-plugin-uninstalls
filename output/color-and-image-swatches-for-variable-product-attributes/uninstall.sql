-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated', 'enable_plugin', 'color_swatches_setting_values', 'attr_image_size', 'woocommerce_cart_redirect_after_add', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phoe_swatch_options', 'attribute_position');
DELETE FROM wp_usermeta WHERE meta_key IN ('phoe_swatch_options', 'attribute_position');
DELETE FROM wp_termmeta WHERE meta_key IN ('phoe_swatch_options', 'attribute_position');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phoe_swatch_options', 'attribute_position');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

