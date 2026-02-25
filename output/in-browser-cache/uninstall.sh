#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jtzl_sw_deactivated_at'
wp option delete 'jtzl_sw_options'
wp option delete 'jtzl_sw_cdn_settings'
wp option delete 'jtzl_sw_log_settings'
wp option delete 'jtzl_sw_plugin_version'
wp option delete 'jtzl_sw_db_version'
wp option delete 'jtzl_sw_cache_version'
wp option delete 'jtzl_sw_version'

# Delete Transients
wp transient delete 'jtzl_sw_build_missing_notice'
wp transient delete 'jtzl_sw_deactivated'
wp transient delete 'jtzl_sw_flush_rewrite_rules'
wp transient delete 'jtzl_sw_reregister_sw'

# Clear Cron Jobs
wp cron event delete 'jtzl_sw_cleanup_error_logs'

