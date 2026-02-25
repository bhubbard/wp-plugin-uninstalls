#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'klcnn_client_key'
wp option delete 'klcnn_secret_key'
wp option delete 'klcnn_connected_since'
wp option delete 'klcnn_marketplace'
wp option delete 'klcnn_encryption_key'
wp option delete 'klcnn_recent_manufacturers'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_klcnn_ean'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_klcnn_ean'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_klcnn_ean'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_klcnn_ean'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_klcnn_sync_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_klcnn_sync_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_klcnn_sync_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_klcnn_sync_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_klcnn_kaufland_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_klcnn_kaufland_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_klcnn_kaufland_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_klcnn_kaufland_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_klcnn_kaufland_category_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_klcnn_kaufland_category_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_klcnn_kaufland_category_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_klcnn_kaufland_category_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_klcnn_kaufland_category_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_klcnn_kaufland_category_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_klcnn_kaufland_category_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_klcnn_kaufland_category_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_klcnn_last_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_klcnn_last_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_klcnn_last_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_klcnn_last_synced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_klcnn_processed_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_klcnn_processed_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_klcnn_processed_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_klcnn_processed_image_id'"
