#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uptimemonster_site_monitor_api_keys'
wp option delete 'uptimemonster_first_installed'
wp option delete 'uptimemonster_need_setup'
wp option delete 'auto_update_plugins'
wp option delete 'auto_update_themes'
wp option delete 'umsm_site_monitor_api_keys'
wp option delete 'roxwp_site_monitor_api_keys'
wp option delete 'uptimemonster_site_monitor_version'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'uptimemonster-setting-status'
wp transient delete 'uptimemonster-is-connected'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_uptimemonster_plugin_data_%' OR option_name LIKE '_site_transient_uptimemonster_plugin_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_uptimemonster_theme_data_%' OR option_name LIKE '_site_transient_uptimemonster_theme_data_%'"
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

