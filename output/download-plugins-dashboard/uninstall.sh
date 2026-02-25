#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_download_plugins_dashboard_version_separator_char'
wp option delete 'alg_download_plugins_dashboard_temp_dir'
wp option delete 'alg_download_plugins_dashboard_themes_append_version'
wp option delete 'alg_download_plugins_dashboard_themes_add_main_dir'
wp option delete 'alg_download_plugins_dashboard_themes_append_date_time'
wp option delete 'alg_download_plugins_dashboard_themes_output_files'
wp option delete 'alg_download_plugins_dashboard_themes_single_zip_file_name'
wp option delete 'alg_download_plugins_dashboard_themes_bulk_dir'
wp option delete 'alg_download_plugins_dashboard_plugins_append_version'
wp option delete 'alg_download_plugins_dashboard_plugins_add_main_dir'
wp option delete 'alg_download_plugins_dashboard_plugins_append_date_time'
wp option delete 'alg_download_plugins_dashboard_plugins_output_files'
wp option delete 'alg_download_plugins_dashboard_plugins_single_zip_file_name'
wp option delete 'alg_download_plugins_dashboard_plugins_bulk_dir'
wp option delete 'alg_download_plugins_dashboard_zip_library'

# Clear Cron Jobs
wp cron event delete 'alg_download_themes_cron'
wp cron event delete 'alg_download_plugins_cron'

