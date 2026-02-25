#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_kre_select_collection'
wp option delete '_KRE_STORAGE_AUTO'
wp option delete '_KRE_STORAGE_CHOICE'
wp option delete 'IPFS_API'
wp option delete 'IPFS_CLUSTER_API'
wp option delete 'IPFS_PINNING_API'
wp option delete '_KRE_IPFS_STORAGE_KEY'
wp option delete '_KRE_SWARM_ENDPOINT'
wp option delete '_KRE_SWARM_STORAGE_KEY'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kre_nid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kre_nid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kre_nid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kre_nid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kre_pdf_modified_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kre_pdf_modified_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kre_pdf_modified_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kre_pdf_modified_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kre_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kre_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kre_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kre_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kre_uri'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kre_uri'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kre_uri'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kre_uri'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
