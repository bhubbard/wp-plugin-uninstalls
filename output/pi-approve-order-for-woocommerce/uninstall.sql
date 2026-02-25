-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aofw_apply_on', 'aofw_product_selection_mode', 'aofw_selected_categories', 'aofw_selected_tags', 'woocommerce_pre_order_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aofw_enabled', '_aofw_disabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aofw_enabled', '_aofw_disabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aofw_enabled', '_aofw_disabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aofw_enabled', '_aofw_disabled');

