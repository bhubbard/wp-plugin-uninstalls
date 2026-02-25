#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bizzio_sync_gencloud_articles_to_import'
wp option delete 'bizzio_sync_gencloud_total_articles'
wp option delete 'bizzio_sync_gencloud_import_progress'
wp option delete 'bizzio_sync_gencloud_imported_count'
wp option delete 'bizzio_sync_gencloud_created_count'
wp option delete 'bizzio_sync_gencloud_updated_count'
wp option delete 'bizzio_sync_gencloud_failed_count'
wp option delete 'bizzio_sync_gencloud_import_status'
wp option delete 'bizzio_sync_gencloud_categories_to_import'
wp option delete 'bizzio_sync_gencloud_total_categories'
wp option delete 'bizzio_sync_gencloud_category_import_progress'
wp option delete 'bizzio_sync_gencloud_category_imported_count'
wp option delete 'bizzio_sync_gencloud_category_failed_count'
wp option delete 'bizzio_sync_gencloud_category_import_status'
wp option delete 'bizzio_api_database'
wp option delete 'bizzio_api_username'
wp option delete 'bizzio_api_password'
wp option delete 'bizzio_id_site'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bizzio_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bizzio_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bizzio_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bizzio_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
