#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer'"
wp option delete 'htpm_options'
wp option delete 'htpm_dashboard_options'
wp option delete 'htpm_diagnostic_data_agreed'
wp option delete 'htpm_diagnostic_data_notice'
wp option delete 'wp_plugin_manager_delete_data_fetch_cache'
wp option delete 'htpm_status'
wp option delete 'htpm_available_post_types'
wp option delete 'htpm_installed'
wp option delete 'WPPluginManagerPro_lic_email'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_htiop_data' OR option_name LIKE '_site_transient_%_htiop_data'"
wp transient delete 'update_plugins'
wp transient delete 'hastech-notice-id-htpm-diagnostic-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htpm_changelog_read'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htpm_changelog_read'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htpm_changelog_read'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htpm_changelog_read'"
