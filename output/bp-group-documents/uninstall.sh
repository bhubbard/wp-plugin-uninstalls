#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_group_documents_nav_page_name'
wp option delete 'bp_group_documents_upload_permission'
wp option delete 'bp_group_documents_use_categories'
wp option delete 'bp_group_documents_valid_file_formats'
wp option delete 'bp_group_documents_display_file_size'
wp option delete 'bp_group_documents_display_icons'
wp option delete 'bp_group_documents_display_owner'
wp option delete 'bp_group_documents_display_date'
wp option delete 'bp_group_documents_items_per_page'
wp option delete 'bp_group_documents_display_download_count'
wp option delete 'bp-group-documents-db-version'
wp option delete 'bp_group_documents_enable_all_groups'
wp option delete 'bp_group_documents_progress_bar'
wp option delete 'bp_group_documents_forum_attachments'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notification_group_documents_upload_mod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notification_group_documents_upload_mod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notification_group_documents_upload_mod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notification_group_documents_upload_mod'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notification_group_documents_upload_member'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notification_group_documents_upload_member'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notification_group_documents_upload_member'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notification_group_documents_upload_member'"
