#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_remove_google_apis'"
wp option delete 'pss_lfsmanager_current_version'
wp option delete 'pss_lfsmanager_setting_remove_google_apis'
wp option delete 'pss_lfsmanager_setting_exclude_list'
wp option delete 'pss_lfsmanager_setting_enable_cache_styles'
wp option delete 'pss_lfsmanager_setting_enable_unite_styles'
wp option delete 'ao_lfsmanager_setting_remove_google_apis'
wp option delete 'ao_lfsmanager_current_version'

