-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('product-view-count_version', 'product-view-count_install_time', 'pvc_db_version', 'woocommerce_version', 'pvc_plugin_version', '_site_transient_update_plugins', 'codexpert-blog-json', 'pvc_migration_notice', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'cx-plugin-info-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_view_count', '_pvc_show_hide', '_pvc_count_type', '_pvc_select_type', '_pvc_min_number', '_pvc_max_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_view_count', '_pvc_show_hide', '_pvc_count_type', '_pvc_select_type', '_pvc_min_number', '_pvc_max_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_view_count', '_pvc_show_hide', '_pvc_count_type', '_pvc_select_type', '_pvc_min_number', '_pvc_max_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_view_count', '_pvc_show_hide', '_pvc_count_type', '_pvc_select_type', '_pvc_min_number', '_pvc_max_number');

