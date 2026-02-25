-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widgetopts_editor_cached', 'sidebars_widgets', 'widgetopts_installDate', 'widgetopts_RatingDiv', 'widgetopts_free_license', 'widgetopts_settings', 'widgetopts_tabmodule-settings', 'widgetopts_tabmodule-visibility', 'widgetopts_tabmodule-devices', 'widgetopts_tabmodule-alignment', 'widgetopts_tabmodule-hide_title', 'widgetopts_tabmodule-classes', 'widgetopts_tabmodule-logic', 'widgetopts_tabmodule-siteorigin', 'widgetopts_tabmodule-search', 'widgetopts_tabmodule-move', 'widgetopts_tabmodule-elementor', 'widgetopts_tabmodule-widget_area', 'widgetopts_tabmodule-import_export', 'widgetopts_tabmodule-beaver', 'widgetopts_tabmodule-acf', 'widgetopts_tabmodule-state', 'widgetopts_tabmodule-classic_widgets_screen', 'widgetopts_tabmodule-hide_page_and_post_block', 'widgetopts_license_keys', 'widgetopts_upgrade', 'widgetopts_global_taxonomies', 'widgetopts_global_all_pages', 'widgetopts_global_categories', 'Activated_Plugin', '_widgetopts_default_registered_', 'extwopts_class_settings', 'widgetopts_removed_global_pages', 'widgetopts_global_pages', 'widgetopts_global_types', 'woocommerce_shop_page_id', 'extwopts_taxonomy_settings', 'widgetopts_tabs_transient');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE 'widgetopts_tabmodule-%';
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';
DELETE FROM wp_options WHERE option_name LIKE 'widgetopts_taxonomy_%';

