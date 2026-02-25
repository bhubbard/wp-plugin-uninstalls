-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emwc_current_starter', '_emoza_sites_imported_customizer_mods', '_emoza_sites_imported_customizer_options', '_emoza_sites_imported_widgets', 'sidebars_widgets', 'elementor_active_kit', 'woocommerce_queue_flush_rewrite_rules', 'wpforms_settings', 'emoza-modules', 'widget_nav_menu', 'emoza_wishlist_page_id', 'woocommerce_shop_page_id', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'woocommerce_myaccount_page_id', 'emwc_custom_import_settings', 'emwc_no_active_theme', 'emwc_importer_data', 'wc_attribute_taxonomies', 'emwc-goldseason');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_emoza_sites_imported_post', '_wp_attachment_is_custom_header', '_emoza_sites_imported_term', '_stock_status', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_emoza_sites_imported_post', '_wp_attachment_is_custom_header', '_emoza_sites_imported_term', '_stock_status', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_emoza_sites_imported_post', '_wp_attachment_is_custom_header', '_emoza_sites_imported_term', '_stock_status', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_emoza_sites_imported_post', '_wp_attachment_is_custom_header', '_emoza_sites_imported_term', '_stock_status', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');

