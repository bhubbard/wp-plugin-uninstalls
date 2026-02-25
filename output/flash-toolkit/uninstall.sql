-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flash_toolkit_meta_box_errors', 'flash_toolkit_admin_notices', 'flash_pro_notice_start_time', 'flash_toolkit_db_version', 'flash_toolkit_permalinks', 'flash_toolkit_admin_footer_text_rated', 'flash_toolkit_version', 'flash_toolkit_custom_sidebars', 'ft_installing', '_flash_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'flash_toolkit_admin_notice_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('flash_pro_notice_temporary_ignore', 'flash_pro_notice_permanent_ignore', 'pageheader_size', 'pageheader_disable', 'layout_type', 'layout_desc', '_example_cb', 'panels_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('flash_pro_notice_temporary_ignore', 'flash_pro_notice_permanent_ignore', 'pageheader_size', 'pageheader_disable', 'layout_type', 'layout_desc', '_example_cb', 'panels_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('flash_pro_notice_temporary_ignore', 'flash_pro_notice_permanent_ignore', 'pageheader_size', 'pageheader_disable', 'layout_type', 'layout_desc', '_example_cb', 'panels_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('flash_pro_notice_temporary_ignore', 'flash_pro_notice_permanent_ignore', 'pageheader_size', 'pageheader_disable', 'layout_type', 'layout_desc', '_example_cb', 'panels_data');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice';

