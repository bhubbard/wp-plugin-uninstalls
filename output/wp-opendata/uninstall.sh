#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_opendata_notification_email'
wp option delete 'wp_opendata_style_sheet'
wp option delete 'wp_opendata_search_datasets'
wp option delete 'wp_opendata_search_projects'
wp option delete 'wp_opendata_contributor_upload_files'
wp option delete 'wp_opendata_frontpage_dataset'
wp option delete 'wp_opendata_title_filter'
wp option delete 'wp_opendata_menu_datasets'
wp option delete 'wp_opendata_menu_projects'
wp option delete 'wp_opendata_filter_content_meta'
wp option delete 'wp_opendata_filter_content_projects'
wp option delete 'wp_opendata_sort_dataset_az'
wp option delete 'wp_opendata_sort_project_az'
wp option delete 'wp_opendata_default_dataset_text'
wp option delete 'wp_opendata_template_dataset'
wp option delete 'wp_opendata_template_project'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_opendata_meta_license_meta_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_opendata_meta_license_meta_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_opendata_meta_license_meta_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_opendata_meta_license_meta_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_opendata_meta_license_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_opendata_meta_license_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_opendata_meta_license_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_opendata_meta_license_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_opendata_meta_download_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_opendata_meta_download_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_opendata_meta_download_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_opendata_meta_download_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_opendata_meta_external_projects'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_opendata_meta_external_projects'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_opendata_meta_external_projects'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_opendata_meta_external_projects'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_opendata_meta_project_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_opendata_meta_project_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_opendata_meta_project_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_opendata_meta_project_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_opendata_meta_developer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_opendata_meta_developer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_opendata_meta_developer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_opendata_meta_developer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_opendata_meta_developer_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_opendata_meta_developer_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_opendata_meta_developer_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_opendata_meta_developer_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_opendata_meta_datasets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_opendata_meta_datasets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_opendata_meta_datasets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_opendata_meta_datasets'"
