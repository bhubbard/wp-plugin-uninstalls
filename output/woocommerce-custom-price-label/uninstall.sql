-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_local_price_labels_enabled', 'woocommerce_custom_price_labels_disabled_options', 'woocommerce_custom_price_label_enabled', 'woocommerce_custom_price_label_disable_for_bots', 'woocommerce_custom_price_label_override_global_with_local', 'alg_woocommerce_global_price_labels_hide_on', 'alg_woocommerce_global_price_labels_show_on', 'woocommerce_global_price_labels_enabled', 'alg_woocommerce_global_price_labels_roles_to_hide', 'alg_woocommerce_global_price_labels_roles_to_show', 'woocommerce_global_price_labels_add_before_text', 'woocommerce_global_price_labels_add_after_text', 'woocommerce_global_price_labels_between_regular_and_sale_text', 'woocommerce_global_price_labels_remove_text', 'woocommerce_global_price_labels_replace_text', 'woocommerce_global_price_labels_replace_with_text', 'woocommerce_version', 'woocommerce_local_price_labels_wrap_enabled', 'active_sitewide_plugins', 'alg_wc_custom_price_label_version');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';
DELETE FROM wp_options WHERE option_name LIKE '%_prepend';
DELETE FROM wp_options WHERE option_name LIKE '%_append';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

