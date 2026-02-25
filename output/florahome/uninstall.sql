-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fah_settings', 'fah_select_export_run', 'fah_select_import_run', 'fah_download_image_cron_run_time', 'fah_download_success_images', 'fah_select_sync_run', 'fah_full_import_success', 'fah_import_success_images', 'fah_full_import_error', 'fah_full_update_success', 'FLoraathome_bulk_order_execution', 'fah_update_success_images', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fah_orderExport', 'pending_images', '_flora_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('fah_orderExport', 'pending_images', '_flora_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('fah_orderExport', 'pending_images', '_flora_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fah_orderExport', 'pending_images', '_flora_product');

