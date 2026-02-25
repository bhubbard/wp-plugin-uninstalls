-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quantity_discounts_settings', 'min_max_quantity_discounts_settings', 'quantity_discounts_general_settings', 'quantity_discounts_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpiron_qd_quantity', '_wpiron_qd_price', '_wpiron_qd_label', '_wpiron_qd_description', '_wpiron_qd_quantity_enabled', '_wpiron_qd_display_method', '_wpiron_qd_min_max_enabled', '_wpiron_qd_min_value', '_wpiron_qd_max_value', '_sale_price', '_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpiron_qd_quantity', '_wpiron_qd_price', '_wpiron_qd_label', '_wpiron_qd_description', '_wpiron_qd_quantity_enabled', '_wpiron_qd_display_method', '_wpiron_qd_min_max_enabled', '_wpiron_qd_min_value', '_wpiron_qd_max_value', '_sale_price', '_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpiron_qd_quantity', '_wpiron_qd_price', '_wpiron_qd_label', '_wpiron_qd_description', '_wpiron_qd_quantity_enabled', '_wpiron_qd_display_method', '_wpiron_qd_min_max_enabled', '_wpiron_qd_min_value', '_wpiron_qd_max_value', '_sale_price', '_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpiron_qd_quantity', '_wpiron_qd_price', '_wpiron_qd_label', '_wpiron_qd_description', '_wpiron_qd_quantity_enabled', '_wpiron_qd_display_method', '_wpiron_qd_min_max_enabled', '_wpiron_qd_min_value', '_wpiron_qd_max_value', '_sale_price', '_regular_price');

