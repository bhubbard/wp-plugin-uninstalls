#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'cmdm_access_denied_page_id'
wp option delete 'sidebars_widgets'
wp option delete 'CMDM_downloading_permissions'
wp option delete 'CMDM_download_permissions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registered'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-was-registered'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'cm_refresh_404_permalinks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmdm_comment_old_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmdm_comment_old_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmdm_comment_old_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmdm_comment_old_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmdm_dismiss_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmdm_dismiss_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmdm_dismiss_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmdm_dismiss_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmdm_allowed_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmdm_allowed_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmdm_allowed_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmdm_allowed_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmdm_attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmdm_attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmdm_attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmdm_attachment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmdm_file_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmdm_file_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmdm_file_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmdm_file_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cmdm_owner_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cmdm_owner_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cmdm_owner_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cmdm_owner_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thread_last_poster'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thread_last_poster'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thread_last_poster'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thread_last_poster'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thread_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thread_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thread_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thread_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thread_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thread_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thread_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thread_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thread_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thread_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thread_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thread_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thread_listeners'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thread_listeners'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thread_listeners'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thread_listeners'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thread_resolved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thread_resolved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thread_resolved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thread_resolved'"
