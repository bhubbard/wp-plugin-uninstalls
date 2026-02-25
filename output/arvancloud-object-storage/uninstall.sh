#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acs_settings'
wp option delete 'arvan-cloud-storage-bucket-name'
wp option delete 'arvan-cloud-storage-settings'
wp option delete 'OBS_INVALID_API_KEY'
wp option delete 'arvan-cloud-storage-bulk-upload-percent'
wp option delete 'arvan-cloud-storage-bulk-upload-new'
wp option delete 'arvan-cloud-storage-bulk-upload-error'
wp option delete 'obs_bulk_upload_last_id'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acs_storage_file_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acs_storage_file_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acs_storage_file_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acs_storage_file_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acs_storage_file_dir'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acs_storage_file_dir'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acs_storage_file_dir'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acs_storage_file_dir'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acs_acl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acs_acl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acs_acl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acs_acl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acs_presigned_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acs_presigned_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acs_presigned_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acs_presigned_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acs_presigned_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acs_presigned_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acs_presigned_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acs_presigned_urls'"
