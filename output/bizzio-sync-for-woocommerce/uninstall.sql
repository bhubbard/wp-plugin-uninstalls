-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bizzio_sync_gencloud_articles_to_import', 'bizzio_sync_gencloud_total_articles', 'bizzio_sync_gencloud_import_progress', 'bizzio_sync_gencloud_imported_count', 'bizzio_sync_gencloud_created_count', 'bizzio_sync_gencloud_updated_count', 'bizzio_sync_gencloud_failed_count', 'bizzio_sync_gencloud_import_status', 'bizzio_sync_gencloud_categories_to_import', 'bizzio_sync_gencloud_total_categories', 'bizzio_sync_gencloud_category_import_progress', 'bizzio_sync_gencloud_category_imported_count', 'bizzio_sync_gencloud_category_failed_count', 'bizzio_sync_gencloud_category_import_status', 'bizzio_api_database', 'bizzio_api_username', 'bizzio_api_password', 'bizzio_id_site');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bizzio_image_id', '_product_image_gallery', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bizzio_image_id', '_product_image_gallery', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bizzio_image_id', '_product_image_gallery', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bizzio_image_id', '_product_image_gallery', 'thumbnail_id');

