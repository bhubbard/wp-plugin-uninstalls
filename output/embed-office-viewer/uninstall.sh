#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eovUtils'
wp option delete 'eov_onedrive'
wp option delete 'csf_demo_mode'
wp option delete 'stp_do_activation_redirect'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ahp_doc_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ahp_doc_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ahp_doc_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ahp_doc_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ahp_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ahp_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ahp_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ahp_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ahp_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ahp_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ahp_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ahp_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ahp_name_top'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ahp_name_top'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ahp_name_top'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ahp_name_top'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ahp_download_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ahp_download_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ahp_download_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ahp_download_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ahp_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ahp_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ahp_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ahp_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eov_show_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eov_show_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eov_show_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eov_show_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eov_download_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eov_download_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eov_download_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eov_download_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eov_right_click'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eov_right_click'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eov_right_click'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eov_right_click'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eov_document'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eov_document'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eov_document'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eov_document'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eov_document_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eov_document_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eov_document_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eov_document_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eov_document_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eov_document_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eov_document_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eov_document_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eov_document_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eov_document_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eov_document_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eov_document_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eov_view_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eov_view_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eov_view_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eov_view_type'"
