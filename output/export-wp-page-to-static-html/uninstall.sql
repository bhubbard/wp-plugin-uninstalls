-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rcExportHtmlKeepSameName', 'rcExportHtmlAddContentsToTheHeader', 'rcExportHtmlAddContentsToTheFooter', 'rcExportHtmlSearchFor', 'rcExportHtmlReplaceWith', 'wpptsh_user_roles', 'ewptshp_worker_token', 'rcExportHtmlCreateIndexOnSinglePage', 'rc_url_to_replace', 'rcExportHtmlExcludeUrls', 'html_export_cookies', 'RcDownloadTotalQueue', 'SetTotalDownloaded', 'rc_export_html_ftp_connection_status', 'rc_export_html_ftp_data', 'rcwph_hidden_files', 'rcExportHtmlSaveAllAssetsToSpecificDir', '_user_roles_can_generate_pdf', 'ewpptsh_review_status', 'ewpptsh_next_review_status', 'ewpptsh_review_status2', 'ewpptsh_next_review_status2', 'recorp_ewpp_settings', 'wpptsh_hide_review', 'export_wp_page_to_html_activation_check', 'wpptsh_db_version', 'wpptsh_notices', 'wpptsh_notices_clicked_data', 'rc_export_pages_as_html_task', 'rc_is_export_pages_zip_downloaded', 'rc_single_post_exporting', 'rc_single_post_exporting_post_name', 'doing_cron');
DELETE FROM wp_options WHERE option_name LIKE '%currently_exporting_url';
DELETE FROM wp_options WHERE option_name LIKE '%currently_exporting_item';
DELETE FROM wp_options WHERE option_name LIKE '%task';
DELETE FROM wp_options WHERE option_name LIKE '%pages_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pdf_export_log', '_upload_to_ftp_path', '_upload_to_ftp');
DELETE FROM wp_usermeta WHERE meta_key IN ('pdf_export_log', '_upload_to_ftp_path', '_upload_to_ftp');
DELETE FROM wp_termmeta WHERE meta_key IN ('pdf_export_log', '_upload_to_ftp_path', '_upload_to_ftp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pdf_export_log', '_upload_to_ftp_path', '_upload_to_ftp');

