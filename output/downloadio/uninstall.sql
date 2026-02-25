-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('downloadio_active_extensions_list', 'downloadio_permalinks', 'downloadio_downloads_page', 'downloadio_my_downloads_page', 'downloadio_privacy_policy_page', 'downloadio_terms_and_conditions_page', 'downloadio_no_access_page', 'downloadio_flush_rewrite_rules_flag', 'downloadio_notice_session_assets_flag', 'downloadio_installed', 'downloadio_redirect_flag', 'downloadio_version', '_downloadio_settings', 'csf_demo_mode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_downloadio_download_access_code_settings', '_downloadio_download_files', '_downloadio_user_data', '_downloadio_download_access_code_desc', '_downloadio_download_utility', '_downloadio_download_additional_buttons', '_downloadio_download_additional_info', '_downloadio_download_additional_contents');
DELETE FROM wp_usermeta WHERE meta_key IN ('_downloadio_download_access_code_settings', '_downloadio_download_files', '_downloadio_user_data', '_downloadio_download_access_code_desc', '_downloadio_download_utility', '_downloadio_download_additional_buttons', '_downloadio_download_additional_info', '_downloadio_download_additional_contents');
DELETE FROM wp_termmeta WHERE meta_key IN ('_downloadio_download_access_code_settings', '_downloadio_download_files', '_downloadio_user_data', '_downloadio_download_access_code_desc', '_downloadio_download_utility', '_downloadio_download_additional_buttons', '_downloadio_download_additional_info', '_downloadio_download_additional_contents');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_downloadio_download_access_code_settings', '_downloadio_download_files', '_downloadio_user_data', '_downloadio_download_access_code_desc', '_downloadio_download_utility', '_downloadio_download_additional_buttons', '_downloadio_download_additional_info', '_downloadio_download_additional_contents');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

