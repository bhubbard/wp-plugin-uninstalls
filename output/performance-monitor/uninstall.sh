#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qtpm_setting_settings'
wp option delete 'qtpm_plugin_post_types'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'qtpm_inital_cron'
wp cron event delete 'qtpm_cron_job'
wp cron event delete 'qtpm_cron_job_month_avg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plugins_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plugins_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plugins_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plugins_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagespeed_api_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagespeed_api_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagespeed_api_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagespeed_api_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'curl_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'curl_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'curl_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'curl_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qtpm_chart_month_cron_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qtpm_chart_month_cron_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qtpm_chart_month_cron_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qtpm_chart_month_cron_data'"
