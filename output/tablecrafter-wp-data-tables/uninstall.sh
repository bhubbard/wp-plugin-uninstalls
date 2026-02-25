#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tc_tracked_urls'
wp option delete 'tablecrafter_collaboration_enabled'
wp option delete 'tablecrafter_collaboration_logging'
wp option delete 'tablecrafter_collaboration_logs'
wp option delete 'tablecrafter_airtable_token'
wp option delete 'tc_do_activation_redirect'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tc_cache_%' OR option_name LIKE '_site_transient_tc_cache_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tc_export_%' OR option_name LIKE '_site_transient_tc_export_%'"

# Clear Cron Jobs
wp cron event delete 'tablecrafter_cleanup_collaboration_sessions'
wp cron event delete 'tc_cleanup_export_files'
wp cron event delete 'tc_refresher_cron'
wp cron event delete 'tc_refresh_single_source'

