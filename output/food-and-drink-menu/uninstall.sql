-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FDM_Trial_Happening', 'fdm-pro-was-active', 'food-and-drink-menu-settings', 'FDMU_Trial_Happening', 'fdm-hide-upgrade-box', 'fdm-installation-time', 'fdm-delete-order-check', 'fdm-ultimate-license-key', 'fdm-permission-level', 'fdmp_license_key', 'fdm-review-ask-time', 'food-and-drink-menu-extra-settings', 'fdm-getting-started', 'fdm-plugin-updated', 'fsp-helper-notice-dismissed', 'fdm-ait-iat-plugin-notice-dismissed', 'fdm-admin-install-notice', 'fdm-credit-information');
DELETE FROM wp_options WHERE option_name LIKE 'fdm_menu_item_flag_icon_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fdm_item_price_discount', 'fdm_item_price', '_fdm_ordering_options', 'fdm_menu_footer_content', '_fdm_menu_item_custom_fields', '_fdm_related_items', 'fdm_item_special', 'fdm_item_source_name', 'fdm_item_source_description', 'fdm_item_source_address', 'fdm_item_source_zoom', '_fdm_menu_section_image', 'fdm_menu_column_one', 'fdm_menu_column_two', '_wp_page_template', 'order_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('fdm_item_price_discount', 'fdm_item_price', '_fdm_ordering_options', 'fdm_menu_footer_content', '_fdm_menu_item_custom_fields', '_fdm_related_items', 'fdm_item_special', 'fdm_item_source_name', 'fdm_item_source_description', 'fdm_item_source_address', 'fdm_item_source_zoom', '_fdm_menu_section_image', 'fdm_menu_column_one', 'fdm_menu_column_two', '_wp_page_template', 'order_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('fdm_item_price_discount', 'fdm_item_price', '_fdm_ordering_options', 'fdm_menu_footer_content', '_fdm_menu_item_custom_fields', '_fdm_related_items', 'fdm_item_special', 'fdm_item_source_name', 'fdm_item_source_description', 'fdm_item_source_address', 'fdm_item_source_zoom', '_fdm_menu_section_image', 'fdm_menu_column_one', 'fdm_menu_column_two', '_wp_page_template', 'order_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fdm_item_price_discount', 'fdm_item_price', '_fdm_ordering_options', 'fdm_menu_footer_content', '_fdm_menu_item_custom_fields', '_fdm_related_items', 'fdm_item_special', 'fdm_item_source_name', 'fdm_item_source_description', 'fdm_item_source_address', 'fdm_item_source_zoom', '_fdm_menu_section_image', 'fdm_menu_column_one', 'fdm_menu_column_two', '_wp_page_template', 'order_data');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'fdm_menu_column_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'fdm_menu_column_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'fdm_menu_column_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fdm_menu_column_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'fdm_menu_section_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'fdm_menu_section_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'fdm_menu_section_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fdm_menu_section_%';

