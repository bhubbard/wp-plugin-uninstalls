#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rcExportHtmlKeepSameName'
wp option delete 'rcExportHtmlAddContentsToTheHeader'
wp option delete 'rcExportHtmlAddContentsToTheFooter'
wp option delete 'rcExportHtmlSearchFor'
wp option delete 'rcExportHtmlReplaceWith'
wp option delete 'wpptsh_user_roles'
wp option delete 'ewptshp_worker_token'
wp option delete 'rcExportHtmlCreateIndexOnSinglePage'
wp option delete 'rc_url_to_replace'
wp option delete 'rcExportHtmlExcludeUrls'
wp option delete 'html_export_cookies'
wp option delete 'RcDownloadTotalQueue'
wp option delete 'SetTotalDownloaded'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%currently_exporting_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%currently_exporting_item'"
wp option delete 'rc_export_html_ftp_connection_status'
wp option delete 'rc_export_html_ftp_data'
wp option delete 'rcwph_hidden_files'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%task'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pages_data'"
wp option delete 'rcExportHtmlSaveAllAssetsToSpecificDir'
wp option delete '_user_roles_can_generate_pdf'
wp option delete 'ewpptsh_review_status'
wp option delete 'ewpptsh_next_review_status'
wp option delete 'ewpptsh_review_status2'
wp option delete 'ewpptsh_next_review_status2'
wp option delete 'recorp_ewpp_settings'
wp option delete 'wpptsh_hide_review'
wp option delete 'export_wp_page_to_html_activation_check'
wp option delete 'wpptsh_db_version'
wp option delete 'wpptsh_notices'
wp option delete 'wpptsh_notices_clicked_data'
wp option delete 'rc_export_pages_as_html_task'
wp option delete 'rc_is_export_pages_zip_downloaded'
wp option delete 'rc_single_post_exporting'
wp option delete 'rc_single_post_exporting_post_name'

# Delete Transients
wp transient delete 'doing_cron'

# Clear Cron Jobs
wp cron event delete 'next_page_export_from_queue'
wp cron event delete 'start_export_internal_wp_page_to_html_event'
wp cron event delete 'wpptsh_daily_schedules'
wp cron event delete 'start_export_custom_url_to_html_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdf_export_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdf_export_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdf_export_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdf_export_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upload_to_ftp_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upload_to_ftp_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upload_to_ftp_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upload_to_ftp_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upload_to_ftp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upload_to_ftp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upload_to_ftp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upload_to_ftp'"
