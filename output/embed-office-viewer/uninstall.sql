-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eovUtils', 'eov_onedrive', 'csf_demo_mode', 'stp_do_activation_redirect', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ahp_doc_file', '_ahp_width', '_ahp_height', '_ahp_name_top', '_ahp_download_button', '_ahp_disable', 'eov_show_name', 'eov_download_button', 'eov_right_click', 'eov_document', 'eov_document_width', 'eov_document_height', 'eov_document_source', 'eov_view_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ahp_doc_file', '_ahp_width', '_ahp_height', '_ahp_name_top', '_ahp_download_button', '_ahp_disable', 'eov_show_name', 'eov_download_button', 'eov_right_click', 'eov_document', 'eov_document_width', 'eov_document_height', 'eov_document_source', 'eov_view_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ahp_doc_file', '_ahp_width', '_ahp_height', '_ahp_name_top', '_ahp_download_button', '_ahp_disable', 'eov_show_name', 'eov_download_button', 'eov_right_click', 'eov_document', 'eov_document_width', 'eov_document_height', 'eov_document_source', 'eov_view_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ahp_doc_file', '_ahp_width', '_ahp_height', '_ahp_name_top', '_ahp_download_button', '_ahp_disable', 'eov_show_name', 'eov_download_button', 'eov_right_click', 'eov_document', 'eov_document_width', 'eov_document_height', 'eov_document_source', 'eov_view_type');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

