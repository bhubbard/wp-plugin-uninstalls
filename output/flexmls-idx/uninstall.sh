#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fmc_settings'
wp option delete 'fmc_cache_version'
wp option delete 'fmc_db_cache_key'
wp option delete 'fmc_tracked_transients'
wp option delete 'fmc_plugin_version'
wp option delete 'fmc_my_type'
wp option delete 'fmc_my_office'
wp option delete 'fmc_my_company'
wp option delete 'fmc_my_id'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'fmc_permabase_changed'
wp transient delete 'fmc_destlink_changed'
wp transient delete 'fmc_cache_tracker'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fmc_cache_%' OR option_name LIKE '_site_transient_fmc_cache_%'"
wp transient delete 'flexmls_auth_token'
wp transient delete 'flexmls_auth_failures_timestamps'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_flexmls_query_%' OR option_name LIKE '_site_transient_flexmls_query_%'"
wp transient delete 'fmc_api'
wp transient delete 'fmc_last_authtoken'

# Clear Cron Jobs
wp cron event delete 'flexmls_hourly_cache_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
