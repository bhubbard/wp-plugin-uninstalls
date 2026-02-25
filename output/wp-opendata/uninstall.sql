-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_opendata_notification_email', 'wp_opendata_style_sheet', 'wp_opendata_search_datasets', 'wp_opendata_search_projects', 'wp_opendata_contributor_upload_files', 'wp_opendata_frontpage_dataset', 'wp_opendata_title_filter', 'wp_opendata_menu_datasets', 'wp_opendata_menu_projects', 'wp_opendata_filter_content_meta', 'wp_opendata_filter_content_projects', 'wp_opendata_sort_dataset_az', 'wp_opendata_sort_project_az', 'wp_opendata_default_dataset_text', 'wp_opendata_template_dataset', 'wp_opendata_template_project');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_opendata_meta_license_meta_data', '_wp_opendata_meta_license_content', '_wp_opendata_meta_download_url', '_wp_opendata_meta_external_projects', '_wp_opendata_meta_project_url', '_wp_opendata_meta_developer_name', '_wp_opendata_meta_developer_url', '_wp_opendata_meta_datasets');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_opendata_meta_license_meta_data', '_wp_opendata_meta_license_content', '_wp_opendata_meta_download_url', '_wp_opendata_meta_external_projects', '_wp_opendata_meta_project_url', '_wp_opendata_meta_developer_name', '_wp_opendata_meta_developer_url', '_wp_opendata_meta_datasets');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_opendata_meta_license_meta_data', '_wp_opendata_meta_license_content', '_wp_opendata_meta_download_url', '_wp_opendata_meta_external_projects', '_wp_opendata_meta_project_url', '_wp_opendata_meta_developer_name', '_wp_opendata_meta_developer_url', '_wp_opendata_meta_datasets');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_opendata_meta_license_meta_data', '_wp_opendata_meta_license_content', '_wp_opendata_meta_download_url', '_wp_opendata_meta_external_projects', '_wp_opendata_meta_project_url', '_wp_opendata_meta_developer_name', '_wp_opendata_meta_developer_url', '_wp_opendata_meta_datasets');

