#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ACFFA_current_version'
wp option delete 'acffa_settings'
wp option delete 'ACFFA_theme_install_update_needed'
wp option delete 'ACFFA_cdn_error'
wp option delete 'ACFFA_kits'
wp option delete 'ACFFA_last_api_call_status'
wp option delete 'ACFFA_custom_icon_sets_list'
wp option delete 'ACFFA_latest_version'
wp option delete 'ACFFA_fa_api_key'
wp option delete 'ACFFA_icon_data'
wp option delete 'ACFFA_active_icon_set'
wp option delete 'ACFFA_latest_version_timestamp'

# Delete Transients
wp transient delete 'ACFFA_access_token'
wp transient delete 'ACFFA_search_config'

# Clear Cron Jobs
wp cron event delete 'ACFFA_theme_install_update_check'
wp cron event delete 'ACFFA_refresh_latest_icons'

