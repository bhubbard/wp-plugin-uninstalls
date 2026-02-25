-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hbfwc_default_rate_id', 'woocommerce_manage_stock', 'woocommerce_hold_stock_minutes', 'hbfwc_version', 'woocommerce_hbfwc_settings', 'woocommerce_cart_redirect_after_add');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('group', 'icon_type', 'icon_svg', 'icon_class', '_hbfwc_rate_plans', 'features', '_addon_type', 'price', 'required', '_default_rate_prices', '_price', 'sub_type', 'description', 'unit', 'min', 'max', '_allotment');
DELETE FROM wp_usermeta WHERE meta_key IN ('group', 'icon_type', 'icon_svg', 'icon_class', '_hbfwc_rate_plans', 'features', '_addon_type', 'price', 'required', '_default_rate_prices', '_price', 'sub_type', 'description', 'unit', 'min', 'max', '_allotment');
DELETE FROM wp_termmeta WHERE meta_key IN ('group', 'icon_type', 'icon_svg', 'icon_class', '_hbfwc_rate_plans', 'features', '_addon_type', 'price', 'required', '_default_rate_prices', '_price', 'sub_type', 'description', 'unit', 'min', 'max', '_allotment');
DELETE FROM wp_commentmeta WHERE meta_key IN ('group', 'icon_type', 'icon_svg', 'icon_class', '_hbfwc_rate_plans', 'features', '_addon_type', 'price', 'required', '_default_rate_prices', '_price', 'sub_type', 'description', 'unit', 'min', 'max', '_allotment');

